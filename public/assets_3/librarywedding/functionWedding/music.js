const audio_music = document.getElementById("audio_music");
const on_speaker = $(".on_speaker");
const off_speaker = $(".off_speaker");
on_speaker.hide();
off_speaker.hide();

function checkSpeaker() {
    if (!audio_music.paused) {
        off_speaker.hide()
        on_speaker.show()
    } else {
        off_speaker.show()
        on_speaker.hide()
    }
}

function runMusicMode() {
    // tự động bật
    let urlWedding = window.location.href;
    let chechMode = urlWedding.includes('iframeMode=true')
        // if (urlWedding.includes('/assets_3/?fbclid') || urlWedding == '/assets_3/' || urlWedding == 'https://www.27biggroup.com' || urlWedding == 'https://wedding.27biggroup.com/' || urlWedding == 'https://wedding.27biggroup.com' || urlWedding.includes('builder.ladipage.com')){

    if (chechMode == false) {

        $(window).on('load', function() {
            audio_music.play()
            checkSpeaker()
        })

        let rolePlay = false;
        $(window).on('scroll', function() {
            if (rolePlay == false) {
                audio_music.play()
                rolePlay = true;
                checkSpeaker()
            }
        })
    }

}
const paramsMusic = new URLSearchParams(window.location.search);
const GetMusic = paramsMusic.get('music');
if (!GetMusic) {
    console.log("aaaaa: ", GetMusic)
    runMusicMode()
    audio_music.play()
    checkSpeaker()


    let roleTouch = false
    document.addEventListener('touchstart', function(event) {

        if (roleTouch === false) {
            audio_music.play()
            checkSpeaker()
        }
        roleTouch = true
    }, false);


}




// bật thủ công
let checkCurrentMusic = false;
off_speaker.click(function() {
    if ("timeMusic" in window) {
        if (checkCurrentMusic === false) {
            audio_music.play().then(() => {
                audio_music.pause();
                audio_music.currentTime = timeMusic;
                audio_music.play();
                checkCurrentMusic = true
            }).catch(error => {
                console.error("Không thể phát nhạc:", error);
            });
        } else {
            audio_music.play()
        }

    } else {
        audio_music.play()
    }

    checkSpeaker()

})

on_speaker.click(function() {
    audio_music.pause()
    checkSpeaker()
})