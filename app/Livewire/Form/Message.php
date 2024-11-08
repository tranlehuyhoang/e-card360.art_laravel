<?php

namespace App\Livewire\Form;

use App\Jobs\CheckPayment;
use App\Models\Message as MessageModel;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Message extends Component
{
    use LivewireAlert; // Use the LivewireAlert trait

    public $invitationId; // To hold the invitation ID
    public $name;
    public $message;
    public $invitation; // To hold the invitation details

    public function mount($invitationId)
    {

        $this->invitationId = $invitationId; // Assign the invitation ID
        $this->invitation = \App\Models\WeddingInvitation::find($invitationId); // Fetch the invitation

        // Check if invitation exists
        if (!$this->invitation) {
            $this->alert('error', 'Lời mời cưới không tồn tại.');
            return;
        }

        // Check if payment status is completed
        if ($this->invitation->payment_status !== 'completed') {
            $this->alert('error', 'Thanh toán chưa hoàn tất. Vui lòng thanh toán .');
            $this->invitation = null; // Reset invitation to prevent form submission
        }
        CheckPayment::dispatch();
    }

    public function render()
    {
 

        return view('livewire.form.message');
    }

    public function createMessage()
    {
        // Additional check to ensure payment is completed
        if (!$this->invitation || $this->invitation->payment_status !== 'completed') {
            $this->alert('error', 'Thanh toán chưa hoàn tất. Vui lòng thanh toán trước khi gửi lời chúc.');
            return;
        }

        $this->validate([
            'name' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        try {
            MessageModel::create([
                'wedding_invitation_id' => $this->invitationId,
                'name' => $this->name,
                'message' => $this->message,
            ]);

            $this->reset(['name', 'message']);

            // Show a success alert
            $this->alert('success', 'Lời chúc đã được gửi thành công!');
        } catch (\Exception $e) {
            // Show an error alert
            $this->alert('error', 'Có lỗi xảy ra: ' . $e->getMessage());
        }
    }
}
