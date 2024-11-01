<?php

namespace App\Livewire\Form;

use App\Models\Message as MessageModel;
use Livewire\Component;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class Message extends Component
{
    use LivewireAlert; // Use the LivewireAlert trait

    public $invitationId; // To hold the invitation ID
    public $name;
    public $message;

    public function mount($invitationId)
    {
        $this->invitationId = $invitationId; // Assign the invitation ID
    }

    public function render()
    {
        return view('livewire.form.message');
    }

    public function createMessage()
    {
        $this->validate([
            'name' => 'required|string|max:255',
            'message' => 'required|string',
        ]);

        MessageModel::create([
            'wedding_invitation_id' => $this->invitationId,
            'name' => $this->name,
            'message' => $this->message,
        ]);
   
        $this->reset(['name', 'message']);

        // Show a success alert
        $this->alert('success', 'Lời chúc đã được gửi thành công!');
    }
}