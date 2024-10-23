// Lấy phần tử container
$('.cap_flast').hide()
$(document).on("click", ".cap_downloadBtn", function() {
    $(".CL_CAP_Person").removeClass('CL_CAP_Person_select');
    var isSafari = /^((?!chrome|android).)*safari/i.test(navigator.userAgent);

    html2canvas(document.querySelector(".cap_screen"), { useCORS: true }).then(canvas => {
        canvas.toBlob(function(blob) {
            if (isSafari) {
                // Sử dụng FileReader để chuyển đổi Blob thành Data URL
                var reader = new FileReader();
                reader.onload = function(e) {
                    var newWindow = window.open("", "_blank");
                    var imgElement = newWindow.document.createElement("img");
                    imgElement.src = e.target.result; // URL từ FileReader
                    imgElement.style.maxWidth = "100%";
                    imgElement.style.height = "auto";
                    newWindow.document.body.appendChild(imgElement);

                    var downloadButton = newWindow.document.createElement("a");
                    downloadButton.href = e.target.result;
                    downloadButton.download = "27BG-selfie.png";
                    downloadButton.textContent = "Tải về";
                    downloadButton.style.cssText = "display: inline-block; margin-top: 20px; padding: 10px 20px; background-color: #4CAF50; color: white; text-decoration: none; border-radius: 5px;";
                    newWindow.document.body.appendChild(downloadButton);
                };
                reader.readAsDataURL(blob);
            } else {
                var downloadLink = document.createElement("a");
                downloadLink.href = URL.createObjectURL(blob);
                downloadLink.download = "27BG-selfie.png";
                document.body.appendChild(downloadLink);
                downloadLink.click();
                document.body.removeChild(downloadLink);
            }
        }, 'image/png');
    }).catch(error => {
        console.error("Lỗi khi chụp ảnh màn hình:", error);
    });

    $('.cap_flast').show();
    setTimeout(() => { $('.cap_flast').hide(); }, 100);
});





// <!-- ___________________________________________________________________________________ -->

// list nhân vật 
function runListCapItem(CapClass, img) {
    let cap_list_item = $(CapClass)
    let cap_list_item_Size = cap_list_item.length
    for (i = 0; i <= cap_list_item_Size + 1; i++) {
        $(cap_list_item[i]).attr('src', '/assets_3/src/image/image-template/CaptureScreen/avatar/' + img + i + '.png');
    }
}
runListCapItem('.CL_CAP_Menu_Person_boy', 'b')
runListCapItem('.CL_CAP_Menu_Person_girl', 'g')


// <!-- ___________________________________________________________________________________ -->
//Chức năng nhân vật
//tạo nhân vật
let set_id = 0;
$(".cl_cap_menu_item").click(function() {
    let getSrc = $(this).find('img').attr('src')
    let html_person = '<div class="CL_CAP_Person ladi-element" id="id_porson_' + set_id + '" ><h2 class="CL_CAP_Name"></h2><img src="' + getSrc + '" height="150"></div>'
        // Tạo một phần tử div mới

    $('#point_created').append(html_person);
    set_id = set_id + 1
})

// ẩm nút chỉnh nhân vật
$('.cap_btn_chinhNhanVat').hide();
let role_btn_chinhNhanVat = false
let getcolorBtn = $('.cap_btn_chinhNhanVat .ladi-button-background').css('background-color')
$('.cap_btn_chinhNhanVat').click(function() {
        if (role_btn_chinhNhanVat == false) {
            $('.cap_btn_chinhNhanVat p').text("   Xong");
            $('.cap_btn_chinhNhanVat .ladi-button-background').css('background-color', 'rgb(22 159 46)');
            role_btn_chinhNhanVat = true
        } else {
            $('.cap_btn_chinhNhanVat p').html("&nbsp; &nbsp; &nbsp; &nbsp; Chỉnh nhân vật");
            $('.cap_btn_chinhNhanVat .ladi-button-background').css('background-color', getcolorBtn);
            $('.cap_btn_chinhNhanVat').hide();
            role_btn_chinhNhanVat = false
            let getIdNhanVat = localStorage.getItem('StorageId')
            $('#' + getIdNhanVat).removeClass('CL_CAP_Person_select');
        }

    })
    // Chọn nhân vật 
let StorageId = '';
$(document).on("click", ".CL_CAP_Person", function() {
    //hiện nút chỉnh nhân vật
    $('.cap_btn_chinhNhanVat').show();
    let getIdPerson = $(this).attr('id')
        // lưu id vào local
    localStorage.setItem('StorageId', getIdPerson)
        // xóa nhân vật được chọnchọn
    $(".CL_CAP_Person").removeClass('CL_CAP_Person_select');
    $(this).addClass('CL_CAP_Person_select')
    let getPointX = $(this).css('top')
    let getPointY = $(this).css('left')
    localStorage.setItem('PointXY', getPointX + ',' + getPointY)
        // kích thước
    let getSize = $(this).find('img').css('height')
    getSize = getSize.split('px').join('')
    $('#cap_change_size').val(getSize)
});

// điều khiển nhân vật --------------------------------------------------
let speedUp = 0;
let readyRun = false

function movePerson(X, Y, directionX, directionY) {
    runMove = setInterval(() => {
        let getIdNhanVat = localStorage.getItem('StorageId')
        let arrPointXY = localStorage.getItem('PointXY').split(',')
        let PointX = arrPointXY[0].replace("px", "")
        let PointY = arrPointXY[1].replace("px", "")
        PointX = Number(PointX) + X + (speedUp * X);
        PointY = Number(PointY) + Y + (speedUp * Y);
        speedUp = speedUp + 1
        console.log('check: ' + speedUp)
        $("#" + getIdNhanVat).css(directionX, PointX)
        $("#" + getIdNhanVat).css(directionY, PointY)
        localStorage.setItem('PointXY', PointX + 'px,' + PointY + 'px')
    }, 100)
}
$('.cap_move_down').on('mousedown', function() {
    movePerson(1, 0, 'top', 'left')
})
$('.cap_move_up').on('mousedown', function() {
    movePerson(-1, 0, 'top', 'left')
})
$('.cap_move_right').on('mousedown', function() {
    movePerson(0, 1, 'top', 'left')
})
$('.cap_move_left').on('mousedown', function() {
        movePerson(0, -1, 'top', 'left')
    })
    // hàm dừng di chuyển
function stopMove() {
    if (typeof runMove !== 'undefined') {
        clearInterval(runMove)
        speedUp = 0
    }
}
$('.cap_move_down').mouseout(function() {
    stopMove()
})
$('.cap_move_up').mouseout(function() {
    stopMove()
})
$('.cap_move_right').mouseout(function() {
    stopMove()
})
$('.cap_move_left').mouseout(function() {
    stopMove()
})
$(document).on('mouseup', function() {
    stopMove()
})

// di chuyển nhân vật cho điện thoại
$('.cap_move_down').on('touchstart', function(e) {
    movePerson(1, 0, 'top', 'left')
})
$('.cap_move_up').on('touchstart', function(e) {
    movePerson(-1, 0, 'top', 'left')
})
$('.cap_move_right').on('touchstart', function(e) {
    movePerson(0, 1, 'top', 'left')
})
$('.cap_move_left').on('touchstart', function(e) {
    movePerson(0, -1, 'top', 'left')
})
$(document).on('touchend', function(e) {
    stopMove()
});
$(document).on('touchcancel', function(e) {
    stopMove()
});



// xóa nhân vật----------------------------------------------- 
$('.cap_delete_person').click(function() {
    let getIdNhanVat = localStorage.getItem('StorageId')
    if (getIdNhanVat !== 'id_porson_000') {
        $('#' + getIdNhanVat).remove();
    }
})


// chức năng chát -------------------------------------------------
$('.cap_btn_chat').click(function() {
        let getValueChat = $('#cap_text_box').val()
        let getIdNhanVat = localStorage.getItem('StorageId')
        if (getIdNhanVat !== 'id_porson_000') {
            $('#' + getIdNhanVat + " h2").text(getValueChat);
        }
    })
    // đổi kích thước nhân vật----------------------------------------------
$('#cap_change_size').on('input', function() {
    let getSize = $(this).val()
    let getIdNhanVat = localStorage.getItem('StorageId')
    $('#' + getIdNhanVat + " img").css('height', getSize);
})