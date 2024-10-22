<?php

namespace App\Livewire\Detail;

use App\Models\WeddingInvitation;
use App\Models\Message;
use App\Models\Attendance;
use Livewire\Component;

class ChiTietMau1 extends Component
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

    public function mount($code)
    {
        $this->invitation = WeddingInvitation::where('invitation_code', $code)->firstOrFail();
    }

    public function render()
    {
        $messages = Message::where('wedding_invitation_id', $this->invitation->id)->get();

        return view('livewire.detail.chi-tiet-mau1', [
            'invitation' => $this->invitation,
            'messages' => $messages ?? collect(),
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

    public function createMessage()
    {
        $this->validate([
            'authorName' => 'required|string|max:255',
            'messageContent' => 'required|string',
        ]);

        Message::create([
            'wedding_invitation_id' => $this->invitation->id,
            'name' => $this->authorName,
            'message' => $this->messageContent,
        ]);

        $this->reset(['authorName', 'messageContent']);
        session()->flash('message', 'Lời chúc đã được gửi thành công!');
    }
}
