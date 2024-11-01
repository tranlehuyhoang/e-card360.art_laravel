<?php

namespace App\Livewire\Form;

use Jantinnerezo\LivewireAlert\LivewireAlert;
use Livewire\Component;
use App\Models\Attendance as AttendanceModel; // Ensure you import the Attendance model

class Attendance extends Component
{
    use LivewireAlert; // Use the LivewireAlert trait

    public $invitation;
    public $attendeeName;
    public $attendanceStatus;
    public $attendanceLocation;
    public $numberOfGuests;
    public $attendanceNote;
    public $invitationId;

    public function mount($invitation, $invitationId)
    {
        $this->invitation = $invitation; // Assign the invitation
        $this->invitationId = $invitationId; // Assign the invitation ID
    }

    public function render()
    {
        return view('livewire.form.attendance'); // Ensure you use the correct view for attendance
    }

    public function confirmAttendance()
    {
        try {
            $this->validate([
                'attendeeName' => 'required|string|max:255',
                'attendanceStatus' => 'required|in:Có tôi sẽ đến,Xin Lỗi tôi không tham dự được !',
                'attendanceLocation' => 'required|in:TƯ GIA NHÀ GÁI,TƯ GIA NHÀ TRAI',
                'numberOfGuests' => 'required|integer',
                'attendanceNote' => 'nullable|string',
            ]);

            AttendanceModel::create([
                'wedding_invitation_id' => $this->invitation->id,
                'name' => $this->attendeeName,
                'status' => $this->attendanceStatus,
                'location' => $this->attendanceLocation,
                'number_of_guests' => $this->numberOfGuests,
                'note' => $this->attendanceNote,
            ]);

            $this->reset(['attendeeName', 'attendanceStatus', 'attendanceLocation', 'numberOfGuests', 'attendanceNote']);
            
            // Show a success alert
            $this->alert('success', 'Xác nhận tham dự đã được gửi thành công!');
        } catch (\Exception $e) {
            // Show an error alert
            $this->alert('error', 'Có lỗi xảy ra: ' . $e->getMessage());
        }
    }
}