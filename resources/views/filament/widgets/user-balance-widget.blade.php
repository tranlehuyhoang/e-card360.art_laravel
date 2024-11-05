<div class="flex items-center p-4 bg-black text-white rounded-lg shadow">
    <div class="flex-1">
        <h2 class="text-xl font-semibold">Số dư của bạn</h2>
        <p class="text-lg">{{ $this->getBalance() }} VNĐ</p>
        <button 
            class="mt-4 px-4 py-2 bg-blue-500 text-white rounded hover:bg-blue-600" 
            onclick="openModal()">
            Nạp tiền
        </button>
    </div>
    <div class="ml-4">
        <img src="path/to/your/image.jpg" alt="Hình ảnh" class="w-16 h-16 rounded-full" />
    </div>
</div>

<!-- Modal -->
<div id="depositModal" class="hidden fixed inset-0 bg-gray-800 bg-opacity-50 flex items-center justify-center">
    <div class="bg-white rounded-lg p-6">
        <h3 class="text-lg font-semibold">Thông tin nạp tiền</h3>
        <p>Số tài khoản ngân hàng: 123456789</p>
        <button 
            class="mt-4 px-4 py-2 bg-red-500 text-white rounded hover:bg-red-600" 
            onclick="closeModal()">
            Đóng
        </button>
    </div>
</div>

<script>
    function openModal() {
        document.getElementById('depositModal').classList.remove('hidden');
    }

    function closeModal() {
        document.getElementById('depositModal').classList.add('hidden');
    }
</script>