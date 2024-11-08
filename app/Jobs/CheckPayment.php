<?php

namespace App\Jobs;

use App\Models\Order;
use App\Models\WeddingInvitation;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Foundation\Queue\Queueable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class CheckPayment implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    public $tries = 30;
    public $backoff = 60;

    /**
     * Create a new job instance.
     */
    public function __construct()
    {
        //
    }

    /**
     * Execute the job.
     */
    public function handle()
    {
        try {
            // Make the GET request to the payment API
            $response = Http::get('https://api.web2m.com/historyapimb/2508robloX*/104567890/3F3C181D-4455-EB63-CF92-F92B7CD0627B');
    
            // Check if the response was successful
            if ($response->successful()) {
                $data = $response->json();
    
                // Lặp qua dữ liệu giao dịch để kiểm tra từng giao dịch
                foreach ($data['data'] as $transaction) {
                    $description = $transaction['description'];
                    $creditAmount = $transaction['creditAmount'];
                
                    if (preg_match('/[A-Z]{3}\d{7}/', $description, $matches)) {
                        $invitation_code = $matches[0]; // Lấy mã đơn hàng
                        // Find the order based on the invitation code
                        $invitation = WeddingInvitation::where('invitation_code', $invitation_code)
                            ->where('total_amount', $creditAmount)
                            ->first();
                
                        // If the order is found, update the payment status
                        if ($invitation) {
                            $invitation->payment_status = 'completed'; // Update payment status
                            $invitation->save(); // Save changes
                            Log::info('Updated order status for order code: ' . $invitation_code);
                        }
                    }
                }
            } else {
                Log::warning('API request failed with status: ' . $response->status());
            }
    
        } catch (\Exception $e) {
            Log::error('Failed to process transaction history: ' . $e->getMessage());
            throw $e; // Re-throw the exception to trigger job retry
        }
    
        // Dispatch the job again to check after a delay
        self::dispatch()->delay(now()->addSeconds(1));
    }
    
}