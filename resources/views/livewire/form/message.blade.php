<div>
    <form wire:submit.prevent="createMessage">
        <div class="input-group uk-margin-top" style="color:rgb(255, 255, 255)">
            <label for="">Tên của bạn</label>
            <input style="border:1px solid white ;color:rgb(0, 0, 0)" wire:model="name" type="text"
                class="input blur-bg" required />
        </div>
        <div class="input-group uk-margin-top">
            <label for="" style="color:white">Lời nhắn gửi</label>
            <textarea style="border:1px solid white; color:rgb(0, 0, 0)" wire:model="message"
                class="input-text text-white blur-bg" cols="30" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary send_message uk-margin-top" style="color:white">Gửi lời
            chúc</button>
    </form>
</div>