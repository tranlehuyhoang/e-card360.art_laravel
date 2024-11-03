<?php

namespace App\Livewire\Detail;

use App\Models\WeddingInvitation;
use App\Models\Message;
use App\Models\Attendance;
use Livewire\Component;

class ChiTietMau4 extends Component
{
    public $invitation;
    public $name;
    public $message;
    public $attendeeName;
    public $attendanceStatus;
    public $attendanceLocation;
    public $numberOfGuests;
    public $attendanceNote;
    public $authorName;
    public $messageContent;

    // Nhận slug từ URL và tìm WeddingInvitation tương ứng.
    public function mount($code)
    {
        $this->invitation = WeddingInvitation::where('invitation_code', $code)->firstOrFail();
    }

    public function render()
    {
        $messages = Message::where('wedding_invitation_id', $this->invitation->id)->get();

        return view('livewire.detail.chi-tiet-mau4', [
            'invitation' => $this->invitation,
            'messages' => $messages ?? collect(), // Sử dụng một collection rỗng nếu $messages là null
        ]);
    }

    public function sendMessage()
    {
        $this->validate([
            'name' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        Message::create([
            'wedding_invitation_id' => $this->invitation->id,
            'name' => $this->name,
            'message' => $this->message,
        ]);

        $this->reset(['name', 'message']);
        session()->flash('message', 'Lời chúc đã được gửi thành công!');
    }

    public function confirmAttendance()
    {
        try {
            $this->validate([
                'attendeeName' => 'required|string|max:255',
                'attendanceStatus' => 'required|in:Có tôi sẽ đến,Xin Lỗi tôi không tham dự được !',
                'attendanceLocation' => 'required|in:TƯ GIA NHÀ GÁI,TƯ GIA NHÀ TRAI',
                'numberOfGuests' => 'required',
                'attendanceNote' => 'nullable|string',
            ]);

            Attendance::create([
                'wedding_invitation_id' => $this->invitation->id,
                'name' => $this->attendeeName,
                'status' => $this->attendanceStatus,
                'location' => $this->attendanceLocation,
                'number_of_guests' => $this->numberOfGuests,
                'note' => $this->attendanceNote,
            ]);

            $this->reset(['attendeeName', 'attendanceStatus', 'attendanceLocation', 'numberOfGuests', 'attendanceNote']);
            session()->flash('attendance', 'Xác nhận tham dự đã được gửi thành công!');
        } catch (\Exception $e) {
            session()->flash('error', 'Có lỗi xảy ra: ' . $e->getMessage());
        }
    }

    
}
