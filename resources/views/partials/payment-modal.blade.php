<div style="display: flex;flex-direction: column;align-items: center;justify-content: center">
    <P>Quét mã qr để thanh toán</P>
    <img src="https://vietqr.co/api/generate/mb/104567890/VIETQR.CO/{{ number_format($amount, 0, '', '') }}/{{ $invoiceCode }}?style=2&logo=1&isMask=1&bg=61" alt="" width="250px" srcset="">

    <p><strong>Mã hóa đơn:</strong> {{ $invoiceCode }}</p>
    <p><strong>Số tiền:</strong> {{ number_format($amount, 0, ',', '.') }} VND</p> <!-- Hiển thị số tiền với định dạng -->
    <p><strong>Số tài khoản:</strong>104567890</p>
    <p><strong>Ngân hàng:</strong>MBBANK</p>
    <p><strong>Chủ tài khoản:</strong>TRẦN LÊ HUY HOÀNG</p>
 
</div>