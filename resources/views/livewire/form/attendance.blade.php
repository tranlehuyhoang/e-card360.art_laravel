<div>
    <section id="form" class="form" style="display:block">
        <div class="container">
            <form wire:submit.prevent="confirmAttendance"
                style="background-image:url(https://static.vecteezy.com/system/resources/previews/016/407/415/original/paper-cut-sweet-pink-envelope-and-heart-with-copy-space-for-design-valentine-s-day-or-love-day-background-concept-send-a-letter-to-a-lover-couple-free-vector.jpg)">
                <h2 class="section-title">Xác nhận tham dự</h2>
                <p class="sub-title text-center " style="
                text-align: center;
            ">Hãy cho chúng tôi biết bạn sẽ đến tham dự nhé!</p>
                <div class="form-container">
                    <div class="group-radio">
                        <label class="radio-container">TƯ GIA NHÀ GÁI
                            <span class="tooltip">
                                <p>{{ $invitation->bride_family_address }}</p>
                            </span>
                            <input type="radio" wire:model="attendanceLocation" value="TƯ GIA NHÀ GÁI"
                                name="attendanceLocation" required>
                            <span class="checkmark"></span>
                        </label>

                        <label class="radio-container">TƯ GIA NHÀ TRAI
                            <span class="tooltip">
                                <p>{{ $invitation->groom_family_address }}</p>
                            </span>
                            <input checked type="radio" wire:model="attendanceLocation" value="TƯ GIA NHÀ TRAI"
                                name="attendanceLocation" required>
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div class="group-input">
                        <label>Tên Khách Mời</label>
                        <input type="text" class="input" wire:model="attendeeName" required placeholder="Tên Khách Mời">
                    </div>

                    <div class="group-input">
                        <p class="group-title"></p>
                        <div class="group-select">
                            <select wire:model="attendanceStatus" class="uk-text-truncate" style="max-width:320px"
                                required>
                                <option value="">Chọn trạng thái tham dự</option>
                                <option value="Có tôi sẽ đến">Có tôi sẽ đến</option>
                                <option value="Xin Lỗi tôi không tham dự được !">Xin Lỗi tôi không tham dự
                                    được !</option>
                            </select>
                            <i class='bx bx-chevron-down'></i>
                        </div>
                        <div class="group-select">
                            <select wire:model="numberOfGuests" required>
                                <option value="">Chọn số lượng người</option>
                                <option value="1">1 Người</option>
                                <option value="2">2 Người</option>
                                <option value="3">3 Người</option>
                            </select>
                            <i class='bx bx-chevron-down'></i>
                        </div>
                    </div>
                    <div class="group-input">
                        <label>Ghi chú</label>
                        <textarea wire:model="attendanceNote" cols="30" rows="4"
                            placeholder="Nhập ghi chú của bạn"></textarea>
                    </div>

                    <div class="group-input">
                        <button type="submit" class="wedding-submit" style="margin: 10px 0;">Xác nhận</button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</div>