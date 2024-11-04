<div>
    <div>

 
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title>{{ $invitation->seo_title ?? '' }}</title>
            <meta name="description" content="{{ $invitation->seo_description ?? '' }}" />
            <meta name="robots"
                content="index, follow, max-snippet:-1, max-video-preview:-1, max-image-preview:large" />
            <link rel="canonical" href="{{ request()->fullUrl() }}">
            <meta property="og:locale" content="vi_VN" />
            <meta property="og:type" content="article" />
            <meta property="og:title" content="{{ $invitation->seo_title ?? '' }}" />
            <meta property="og:url" content="{{ request()->fullUrl() }}" />
            <meta property="og:site_name" content="Thiệp cưới online" />
            <meta property="og:image" content="{{ Storage::url($invitation->seo_image) ?? '' }}" />
            <meta property="og:image:secure_url" content="{{ Storage::url($invitation->seo_image) ?? '' }}" />
            <meta property="og:image:width" content="854" />
            <meta property="og:image:height" content="1280" />
            <meta property="og:image:alt" content="{{ $invitation->seo_title ?? '' }}" />
            <meta property="og:image:type" content="image/jpeg" />
            <meta name="twitter:card" content="summary_large_image" />
            <meta name="twitter:title" content="{{ $invitation->seo_title ?? '' }}" />
            <meta name="twitter:image" content="{{ Storage::url($invitation->seo_image) ?? '' }}" />
            <script>
                window._wpemojiSettings = {"baseUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/72x72\/","ext":".png","svgUrl":"https:\/\/s.w.org\/images\/core\/emoji\/15.0.3\/svg\/","svgExt":".svg","source":{"concatemoji":"https:\/\/thiepdientu.com.vn\/wp-includes\/js\/wp-emoji-release.min.js?ver=6.6.2"}};
/*! This file is auto-generated */
!function(i,n){var o,s,e;function c(e){try{var t={supportTests:e,timestamp:(new Date).valueOf()};sessionStorage.setItem(o,JSON.stringify(t))}catch(e){}}function p(e,t,n){e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(t,0,0);var t=new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data),r=(e.clearRect(0,0,e.canvas.width,e.canvas.height),e.fillText(n,0,0),new Uint32Array(e.getImageData(0,0,e.canvas.width,e.canvas.height).data));return t.every(function(e,t){return e===r[t]})}function u(e,t,n){switch(t){case"flag":return n(e,"\ud83c\udff3\ufe0f\u200d\u26a7\ufe0f","\ud83c\udff3\ufe0f\u200b\u26a7\ufe0f")?!1:!n(e,"\ud83c\uddfa\ud83c\uddf3","\ud83c\uddfa\u200b\ud83c\uddf3")&&!n(e,"\ud83c\udff4\udb40\udc67\udb40\udc62\udb40\udc65\udb40\udc6e\udb40\udc67\udb40\udc7f","\ud83c\udff4\u200b\udb40\udc67\u200b\udb40\udc62\u200b\udb40\udc65\u200b\udb40\udc6e\u200b\udb40\udc67\u200b\udb40\udc7f");case"emoji":return!n(e,"\ud83d\udc26\u200d\u2b1b","\ud83d\udc26\u200b\u2b1b")}return!1}function f(e,t,n){var r="undefined"!=typeof WorkerGlobalScope&&self instanceof WorkerGlobalScope?new OffscreenCanvas(300,150):i.createElement("canvas"),a=r.getContext("2d",{willReadFrequently:!0}),o=(a.textBaseline="top",a.font="600 32px Arial",{});return e.forEach(function(e){o[e]=t(a,e,n)}),o}function t(e){var t=i.createElement("script");t.src=e,t.defer=!0,i.head.appendChild(t)}"undefined"!=typeof Promise&&(o="wpEmojiSettingsSupports",s=["flag","emoji"],n.supports={everything:!0,everythingExceptFlag:!0},e=new Promise(function(e){i.addEventListener("DOMContentLoaded",e,{once:!0})}),new Promise(function(t){var n=function(){try{var e=JSON.parse(sessionStorage.getItem(o));if("object"==typeof e&&"number"==typeof e.timestamp&&(new Date).valueOf()<e.timestamp+604800&&"object"==typeof e.supportTests)return e.supportTests}catch(e){}return null}();if(!n){if("undefined"!=typeof Worker&&"undefined"!=typeof OffscreenCanvas&&"undefined"!=typeof URL&&URL.createObjectURL&&"undefined"!=typeof Blob)try{var e="postMessage("+f.toString()+"("+[JSON.stringify(s),u.toString(),p.toString()].join(",")+"));",r=new Blob([e],{type:"text/javascript"}),a=new Worker(URL.createObjectURL(r),{name:"wpTestEmojiSupports"});return void(a.onmessage=function(e){c(n=e.data),a.terminate(),t(n)})}catch(e){}c(n=f(s,u,p))}t(n)}).then(function(e){for(var t in e)n.supports[t]=e[t],n.supports.everything=n.supports.everything&&n.supports[t],"flag"!==t&&(n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&n.supports[t]);n.supports.everythingExceptFlag=n.supports.everythingExceptFlag&&!n.supports.flag,n.DOMReady=!1,n.readyCallback=function(){n.DOMReady=!0}}).then(function(){return e}).then(function(){var e;n.supports.everything||(n.readyCallback(),(e=n.source||{}).concatemoji?t(e.concatemoji):e.wpemoji&&e.twemoji&&(t(e.twemoji),t(e.wpemoji)))}))}((window,document),window._wpemojiSettings);
            </script>
            <style id='wp-emoji-styles-inline-css'>
                img.wp-smiley,
                img.emoji {
                    display: inline !important;
                    border: none !important;
                    box-shadow: none !important;
                    height: 1em !important;
                    width: 1em !important;
                    margin: 0 0.07em !important;
                    vertical-align: -0.1em !important;
                    background: none !important;
                    padding: 0 !important;
                }
            </style>
            <link rel='stylesheet' id='wp-block-library-css'
                href='/assets_1/wp-includes/css/dist/block-library/style.min.css?ver=6.6.2' media='all' />
            <style id='rank-math-toc-block-style-inline-css'>
                .wp-block-rank-math-toc-block nav ol {
                    counter-reset: item
                }

                .wp-block-rank-math-toc-block nav ol li {
                    display: block
                }

                .wp-block-rank-math-toc-block nav ol li:before {
                    content: counters(item, ".") ". ";
                    counter-increment: item
                }
            </style>
            <style id='classic-theme-styles-inline-css'>
                /*! This file is auto-generated */
                .wp-block-button__link {
                    color: #fff;
                    background-color: #32373c;
                    border-radius: 9999px;
                    box-shadow: none;
                    text-decoration: none;
                    padding: calc(.667em + 2px) calc(1.333em + 2px);
                    font-size: 1.125em
                }

                .wp-block-file__button {
                    background: #32373c;
                    color: #fff;
                    text-decoration: none
                }
            </style>
            <style id='global-styles-inline-css'>
                :root {
                    --wp--preset--aspect-ratio--square: 1;
                    --wp--preset--aspect-ratio--4-3: 4/3;
                    --wp--preset--aspect-ratio--3-4: 3/4;
                    --wp--preset--aspect-ratio--3-2: 3/2;
                    --wp--preset--aspect-ratio--2-3: 2/3;
                    --wp--preset--aspect-ratio--16-9: 16/9;
                    --wp--preset--aspect-ratio--9-16: 9/16;
                    --wp--preset--color--black: #000000;
                    --wp--preset--color--cyan-bluish-gray: #abb8c3;
                    --wp--preset--color--white: #ffffff;
                    --wp--preset--color--pale-pink: #f78da7;
                    --wp--preset--color--vivid-red: #cf2e2e;
                    --wp--preset--color--luminous-vivid-orange: #ff6900;
                    --wp--preset--color--luminous-vivid-amber: #fcb900;
                    --wp--preset--color--light-green-cyan: #7bdcb5;
                    --wp--preset--color--vivid-green-cyan: #00d084;
                    --wp--preset--color--pale-cyan-blue: #8ed1fc;
                    --wp--preset--color--vivid-cyan-blue: #0693e3;
                    --wp--preset--color--vivid-purple: #9b51e0;
                    --wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg, rgba(6, 147, 227, 1) 0%, rgb(155, 81, 224) 100%);
                    --wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg, rgb(122, 220, 180) 0%, rgb(0, 208, 130) 100%);
                    --wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg, rgba(252, 185, 0, 1) 0%, rgba(255, 105, 0, 1) 100%);
                    --wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg, rgba(255, 105, 0, 1) 0%, rgb(207, 46, 46) 100%);
                    --wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg, rgb(238, 238, 238) 0%, rgb(169, 184, 195) 100%);
                    --wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg, rgb(74, 234, 220) 0%, rgb(151, 120, 209) 20%, rgb(207, 42, 186) 40%, rgb(238, 44, 130) 60%, rgb(251, 105, 98) 80%, rgb(254, 248, 76) 100%);
                    --wp--preset--gradient--blush-light-purple: linear-gradient(135deg, rgb(255, 206, 236) 0%, rgb(152, 150, 240) 100%);
                    --wp--preset--gradient--blush-bordeaux: linear-gradient(135deg, rgb(254, 205, 165) 0%, rgb(254, 45, 45) 50%, rgb(107, 0, 62) 100%);
                    --wp--preset--gradient--luminous-dusk: linear-gradient(135deg, rgb(255, 203, 112) 0%, rgb(199, 81, 192) 50%, rgb(65, 88, 208) 100%);
                    --wp--preset--gradient--pale-ocean: linear-gradient(135deg, rgb(255, 245, 203) 0%, rgb(182, 227, 212) 50%, rgb(51, 167, 181) 100%);
                    --wp--preset--gradient--electric-grass: linear-gradient(135deg, rgb(202, 248, 128) 0%, rgb(113, 206, 126) 100%);
                    --wp--preset--gradient--midnight: linear-gradient(135deg, rgb(2, 3, 129) 0%, rgb(40, 116, 252) 100%);
                    --wp--preset--font-size--small: 13px;
                    --wp--preset--font-size--medium: 20px;
                    --wp--preset--font-size--large: 36px;
                    --wp--preset--font-size--x-large: 42px;
                    --wp--preset--spacing--20: 0.44rem;
                    --wp--preset--spacing--30: 0.67rem;
                    --wp--preset--spacing--40: 1rem;
                    --wp--preset--spacing--50: 1.5rem;
                    --wp--preset--spacing--60: 2.25rem;
                    --wp--preset--spacing--70: 3.38rem;
                    --wp--preset--spacing--80: 5.06rem;
                    --wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
                    --wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
                    --wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
                    --wp--preset--shadow--outlined: 6px 6px 0px -3px rgba(255, 255, 255, 1), 6px 6px rgba(0, 0, 0, 1);
                    --wp--preset--shadow--crisp: 6px 6px 0px rgba(0, 0, 0, 1);
                }

                :where(.is-layout-flex) {
                    gap: 0.5em;
                }

                :where(.is-layout-grid) {
                    gap: 0.5em;
                }

                body .is-layout-flex {
                    display: flex;
                }

                .is-layout-flex {
                    flex-wrap: wrap;
                    align-items: center;
                }

                .is-layout-flex> :is(*, div) {
                    margin: 0;
                }

                body .is-layout-grid {
                    display: grid;
                }

                .is-layout-grid> :is(*, div) {
                    margin: 0;
                }

                :where(.wp-block-columns.is-layout-flex) {
                    gap: 2em;
                }

                :where(.wp-block-columns.is-layout-grid) {
                    gap: 2em;
                }

                :where(.wp-block-post-template.is-layout-flex) {
                    gap: 1.25em;
                }

                :where(.wp-block-post-template.is-layout-grid) {
                    gap: 1.25em;
                }

                .has-black-color {
                    color: var(--wp--preset--color--black) !important;
                }

                .has-cyan-bluish-gray-color {
                    color: var(--wp--preset--color--cyan-bluish-gray) !important;
                }

                .has-white-color {
                    color: var(--wp--preset--color--white) !important;
                }

                .has-pale-pink-color {
                    color: var(--wp--preset--color--pale-pink) !important;
                }

                .has-vivid-red-color {
                    color: var(--wp--preset--color--vivid-red) !important;
                }

                .has-luminous-vivid-orange-color {
                    color: var(--wp--preset--color--luminous-vivid-orange) !important;
                }

                .has-luminous-vivid-amber-color {
                    color: var(--wp--preset--color--luminous-vivid-amber) !important;
                }

                .has-light-green-cyan-color {
                    color: var(--wp--preset--color--light-green-cyan) !important;
                }

                .has-vivid-green-cyan-color {
                    color: var(--wp--preset--color--vivid-green-cyan) !important;
                }

                .has-pale-cyan-blue-color {
                    color: var(--wp--preset--color--pale-cyan-blue) !important;
                }

                .has-vivid-cyan-blue-color {
                    color: var(--wp--preset--color--vivid-cyan-blue) !important;
                }

                .has-vivid-purple-color {
                    color: var(--wp--preset--color--vivid-purple) !important;
                }

                .has-black-background-color {
                    background-color: var(--wp--preset--color--black) !important;
                }

                .has-cyan-bluish-gray-background-color {
                    background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
                }

                .has-white-background-color {
                    background-color: var(--wp--preset--color--white) !important;
                }

                .has-pale-pink-background-color {
                    background-color: var(--wp--preset--color--pale-pink) !important;
                }

                .has-vivid-red-background-color {
                    background-color: var(--wp--preset--color--vivid-red) !important;
                }

                .has-luminous-vivid-orange-background-color {
                    background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
                }

                .has-luminous-vivid-amber-background-color {
                    background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
                }

                .has-light-green-cyan-background-color {
                    background-color: var(--wp--preset--color--light-green-cyan) !important;
                }

                .has-vivid-green-cyan-background-color {
                    background-color: var(--wp--preset--color--vivid-green-cyan) !important;
                }

                .has-pale-cyan-blue-background-color {
                    background-color: var(--wp--preset--color--pale-cyan-blue) !important;
                }

                .has-vivid-cyan-blue-background-color {
                    background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
                }

                .has-vivid-purple-background-color {
                    background-color: var(--wp--preset--color--vivid-purple) !important;
                }

                .has-black-border-color {
                    border-color: var(--wp--preset--color--black) !important;
                }

                .has-cyan-bluish-gray-border-color {
                    border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
                }

                .has-white-border-color {
                    border-color: var(--wp--preset--color--white) !important;
                }

                .has-pale-pink-border-color {
                    border-color: var(--wp--preset--color--pale-pink) !important;
                }

                .has-vivid-red-border-color {
                    border-color: var(--wp--preset--color--vivid-red) !important;
                }

                .has-luminous-vivid-orange-border-color {
                    border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
                }

                .has-luminous-vivid-amber-border-color {
                    border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
                }

                .has-light-green-cyan-border-color {
                    border-color: var(--wp--preset--color--light-green-cyan) !important;
                }

                .has-vivid-green-cyan-border-color {
                    border-color: var(--wp--preset--color--vivid-green-cyan) !important;
                }

                .has-pale-cyan-blue-border-color {
                    border-color: var(--wp--preset--color--pale-cyan-blue) !important;
                }

                .has-vivid-cyan-blue-border-color {
                    border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
                }

                .has-vivid-purple-border-color {
                    border-color: var(--wp--preset--color--vivid-purple) !important;
                }

                .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
                    background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
                }

                .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
                    background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
                }

                .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
                    background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
                }

                .has-luminous-vivid-orange-to-vivid-red-gradient-background {
                    background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
                }

                .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
                    background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
                }

                .has-cool-to-warm-spectrum-gradient-background {
                    background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
                }

                .has-blush-light-purple-gradient-background {
                    background: var(--wp--preset--gradient--blush-light-purple) !important;
                }

                .has-blush-bordeaux-gradient-background {
                    background: var(--wp--preset--gradient--blush-bordeaux) !important;
                }

                .has-luminous-dusk-gradient-background {
                    background: var(--wp--preset--gradient--luminous-dusk) !important;
                }

                .has-pale-ocean-gradient-background {
                    background: var(--wp--preset--gradient--pale-ocean) !important;
                }

                .has-electric-grass-gradient-background {
                    background: var(--wp--preset--gradient--electric-grass) !important;
                }

                .has-midnight-gradient-background {
                    background: var(--wp--preset--gradient--midnight) !important;
                }

                .has-small-font-size {
                    font-size: var(--wp--preset--font-size--small) !important;
                }

                .has-medium-font-size {
                    font-size: var(--wp--preset--font-size--medium) !important;
                }

                .has-large-font-size {
                    font-size: var(--wp--preset--font-size--large) !important;
                }

                .has-x-large-font-size {
                    font-size: var(--wp--preset--font-size--x-large) !important;
                }

                :where(.wp-block-post-template.is-layout-flex) {
                    gap: 1.25em;
                }

                :where(.wp-block-post-template.is-layout-grid) {
                    gap: 1.25em;
                }

                :where(.wp-block-columns.is-layout-flex) {
                    gap: 2em;
                }

                :where(.wp-block-columns.is-layout-grid) {
                    gap: 2em;
                }

                :root :where(.wp-block-pullquote) {
                    font-size: 1.5em;
                    line-height: 1.6;
                }
                
            </style>
            <link rel='stylesheet' id='uikit-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/uikit.min.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='reset uikit-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/reset1.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='remixicon-css'
                href='https://cdn.jsdelivr.net/npm/remixicon@4.0.0/fonts/remixicon.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='preload-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/preload.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='wedding reset-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/reset-wedding.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='fancybox-css'
                href='https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.css?ver=1.0.0'
                media='all' />
            <link rel='stylesheet' id='swiper slide-css'
                href='https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='animation-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/animation.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='aos style-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/aos.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='footer style-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/footer.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='wedding style-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/wedding.css?ver=1.0.0' media='all' />
            <link rel='stylesheet' id='theme-css'
                href='/assets_1/wp-content/themes/wedding-studio/css/theme.css?ver=1.0.0' media='all' />
            <script src="/assets_1/wp-includes/js/jquery/jquery.min.js?ver=3.7.1" id="jquery-core-js">
            </script>
            <script src="/assets_1/wp-includes/js/jquery/jquery-migrate.min.js?ver=3.4.1" id="jquery-migrate-js">
            </script>
            <script src="/assets_1/wp-content/themes/wedding-studio/js/jquery.min.js?ver=1.0.0" id="Jquery-js"></script>
            <link rel="https://api.w.org/" href="/wp-json/" />
            <link rel="alternate" title="JSON" type="application/json" href="/wp-json/wp/v2/mau-thiep/1097" />
            <link rel="EditURI" type="application/rsd+xml" title="RSD" href="/xmlrpc.php?rsd" />
            <meta name="generator" content="WordPress 6.6.2" />
            <link rel='shortlink' href='/?p=1097' />
            <link rel="alternate" title="oNhúng (JSON)" type="application/json+oembed"
                href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthiepdientu.com.vn%2Fmau-thiep%2Fmau-thiep-bien%2F" />
            <link rel="alternate" title="oNhúng (XML)" type="text/xml+oembed"
                href="/wp-json/oembed/1.0/embed?url=https%3A%2F%2Fthiepdientu.com.vn%2Fmau-thiep%2Fmau-thiep-bien%2F&#038;format=xml" />
            <style type="text/css">
                .site-title,
                .site-description {
                    position: absolute;
                    clip: rect(1px, 1px, 1px, 1px);
                }
            </style>
            <link rel="icon"
                href="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/03/26115441/cropped-logo-favicon-32x32.png"
                sizes="32x32" />
            <link rel="icon"
                href="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/03/26115441/cropped-logo-favicon-192x192.png"
                sizes="192x192" />
            <link rel="apple-touch-icon"
                href="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/03/26115441/cropped-logo-favicon-180x180.png" />
            <meta name="msapplication-TileImage"
                content="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/03/26115441/cropped-logo-favicon-270x270.png" />
            <link rel="stylesheet" href="/assets_1/wp-content/themes/wedding-studio/assets/bien/css/style.css">
        </head>

        <body
            class="mau-thiep-template mau-thiep-template-templates mau-thiep-template-bien mau-thiep-template-templatesbien-php single single-mau-thiep postid-1097 no-sidebar">

            <body>
                <!-- PRELOAD -->
                <div id="preloader" class="uk-position-fixed uk-background-muted uk-position-z-index"
                    style=" left: 0; bottom:0; top:0; width: 100%; z-index:99999;">

                    <div class="uk-position-center uk-text-center">
                        <img src="https://i.imgur.com/saxukyR.png" alt="" style="max-width: 150px;"
                            class="uk-animation-slide-top">

                        <h2 class="uk-text-center uk-marign-remove uk-text-bold uk-h4  uk-animation-slide-bottom">
                            Mẫu Thiệp Biển</h2>

                    </div>

                </div>
                <!-- END PRELOAD -->
                <!-- BANNER -->
                <section id="banner" class="section-banner">
                    <img src="{{ Storage::url($invitation->banner1) }}" alt="Banner Image"
                        class="banner-bg banner_top kenburns-top" style="object-position:center center" />
                    <span class="overlay"></span>
                    <div class="banner-container container">
                        <h1 class="banner-title" data-aos="fade" data-aos-duration="3000">
                            Save the Date
                        </h1>
                        <div class="banner-name">
                            {{ $invitation->groom_name }}<br />
                            <span>&</span><br />
                            {{ $invitation->bride_name }}
                        </div>
                        <span class="line"></span>
                        <div class="banner-date" data-aos="fade-up" data-aos-duration="3000">
                            <span class="banner_date">{{ \Carbon\Carbon::parse($invitation->event_date)->format('d')
                                }}</span>
                            <span class="banner_month">{{ \Carbon\Carbon::parse($invitation->event_date)->format('m')
                                }}</span>
                            <span class="banner_year">{{ \Carbon\Carbon::parse($invitation->event_date)->format('Y')
                                }}</span>
                        </div>
                        <div class="group-add">
                            <p>Địa điểm tổ chức</p>
                            <span class="banner_location_name">{{ $invitation->event_location }}</span>
                            <span class="banner_location_address">{{ $invitation->event_address }}</span>
                        </div>
                        <div class="social-link">
                            <a href="tel:+{{ $invitation->contact_number }}" class="">
                                <i class="ri-phone-fill"></i>
                            </a>
                            <a href="#gift" class="">
                                <i class="ri-gift-2-fill"></i>
                            </a>
                            <a href="https://www.google.com/maps/place/{{ urlencode($invitation->event_address) }}"
                                target="_blank">
                                <i class='ri-map-2-line'></i>
                            </a>
                        </div>
                    </div>
                </section>
                <!-- END BANNER -->


                <!-- ABOUT -->
                <section id="about" class="section-about">
                    <div class="section-heading">
                        <h2 class="section-title">CHÚ RỂ VÀ CÔ DÂU</h2>
                    </div>
                    <div class="about-container container">

                        <!-- Bride Section -->
                        <div class="about-card" style="order:1">
                            <div class="about-media" data-aos="fade-left" data-aos-duration="3000">
                                <img src="{{ Storage::url($invitation->bride_image) }}" alt="Cô dâu"
                                    class="bride_img" />
                            </div>
                            <div class="about-data" data-aos="fade-right" data-aos-duration="3000">
                                <p class="title">Cô dâu</p>
                                <h3 class="bride_name">{{ $invitation->bride_name }}</h3>
                                <p class="bride_birthday">{{
                                    \Carbon\Carbon::parse($invitation->bride_birth_date)->format('d/m/Y') }}</p>
                                <p class="bride_des">{{ $invitation->bride_description }}</p>
                                <hr />
                            </div>
                        </div>

                        <!-- Groom Section -->
                        <div class="about-card" style="order:1">
                            <div class="about-media" data-aos="fade-right" data-aos-duration="3000">
                                <img src="{{ Storage::url($invitation->groom_image) }}" alt="Chú rể" class="groom_img">
                            </div>
                            <div class="about-data" data-aos="fade-left" data-aos-duration="3000">
                                <p class="title">Chú rể</p>
                                <h3 class="groom_name">{{ $invitation->groom_name }}</h3>
                                <p class="groom_birthday">{{
                                    \Carbon\Carbon::parse($invitation->groom_birth_date)->format('d/m/Y') }}</p>
                                <p class="groom_des">{{ $invitation->groom_description }}</p>
                                <hr />
                            </div>
                        </div>

                    </div>
                </section>
                <!-- END ABOUT -->
                <!-- TIMELINE -->
                <section id="time-line" class="time-line-section img_bg bg_overlay"
                    style="background-image:url({{ Storage::url($invitation->banner2) }})">
                    <div class="time-line container">
                        <div class="section-heading">
                            <p class="subtitle">CÂU CHUYỆN TÌNH YÊU</p>
                            <h2 class="section-title">Love Story</h2>
                        </div>

                        <div class="timeline-list">

                            <!-- First Meeting -->
                            <div class="timeline-item" data-aos="fade-up" data-aos-duration="1000">
                                <div class="timeline-body">
                                    <span class="story-date">{{
                                        \Carbon\Carbon::parse($invitation->first_meeting_date)->format('Y') }}</span>
                                    <span class="title">Lần đầu gặp gỡ</span>
                                    <p class="timeline-des">
                                        Ngày ấy vu vơ đăng một dòng status trên facebook than thở, vu vơ đùa giỡn nói
                                        chuyện với một người xa lạ chưa từng quen.
                                    </p>
                                </div>
                            </div>

                            <!-- Dating -->
                            <div class="timeline-item" data-aos="fade-up" data-aos-duration="1000">
                                <div class="timeline-body">
                                    <span class="story-date">{{
                                        \Carbon\Carbon::parse($invitation->dating_date)->format('Y') }}</span>
                                    <span class="title">Hẹn hò</span>
                                    <p class="timeline-des">
                                        Mỗi chiều cuối tuần thường chạy xe vòng quanh qua những con phố, len lỏi trong
                                        từng dòng người tấp nập.
                                    </p>
                                </div>
                            </div>

                            <!-- Engagement -->
                            <div class="timeline-item" data-aos="fade-up" data-aos-duration="1000">
                                <div class="timeline-body">
                                    <span class="story-date">{{
                                        \Carbon\Carbon::parse($invitation->engagement_date)->format('d - m - Y')
                                        }}</span>
                                    <span class="title">Lễ đính hôn</span>
                                    <p class="timeline-des">
                                        Chúng ta từ 2 con người xa lạ mà bước vào cuộc đời nhau. Và giờ đây chúng ta
                                        tiếp tục cùng nhau sang trang mới.
                                    </p>
                                </div>
                            </div>

                            <!-- Wedding -->
                            <div class="timeline-item" data-aos="fade-up" data-aos-duration="1000">
                                <div class="timeline-body">
                                    <span class="story-date">{{
                                        \Carbon\Carbon::parse($invitation->wedding_date)->format('d - m - Y') }}</span>
                                    <span class="title">Lễ Thành Hôn</span>
                                    <p class="timeline-des">
                                        Em và anh không chỉ là người yêu mà chúng ta còn là tri kỷ. Ngày hôm nay, em sẽ
                                        là cô dâu của anh.
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </section>


                <!-- END TIMELINE -->
                <!-- ALBUM -->
                <section id="album" class="uk-section" data-aos="fade-up" data-aos-duration="3000">
                    <div class="section-heading">
                        <p class="subtitle">NHỮNG KHOẢNH KHẮC NGỌT NGÀO CỦA CHÚNG MÌNH</p>
                        <h2 class="uk-heading-small uk-text-center script-font">ALBUM ẢNH</h2>
                    </div>
                    <div class="album container">
                        @if(!empty($invitation->album) && is_array($invitation->album))
                        @foreach($invitation->album as $image)
                        <div class="album-item">
                            <a data-fancybox="gallery" href="{{ Storage::url($image) }}">
                                <img src="{{ Storage::url($image) }}" alt="">
                            </a>
                        </div>
                        @endforeach
                        @else
                        <div class="album-item">
                            <p>No images available.</p>
                        </div>
                        @endif
                    </div>
                </section>
                <!-- END ALBUM -->
                <!-- VIDEO -->
                <style>
                    #video {
                        padding: 80px 0;
                        background: var(--bg)
                    }

                    #video .section-title {
                        text-align: center;
                        color: var(--primary-color)
                    }

                    #video .subtitle {
                        text-align: center;
                    }

                    .video-container {
                        margin-top: 40px
                    }

                    .video-list {
                        display: flex;
                        flex-direction: column;
                        gap: 40px;
                        justify-content: center;
                        align-items: center;
                    }

                    .video-list iframe {
                        aspect-ratio: 16/9;
                        width: 100%;
                        max-width: 768px;
                        border-radius: 12px;
                        box-shadow: 0 0 20px rgba(0 0 0 /10%);
                    }
                </style>
                <!-- END VIDEO -->

                <!-- COUNT DOWN -->

                <section id="countdown-section"
                    class="uk-background-cover uk-section uk-section-large uk-text-center uk-light"
                    style="background-image:url({{ Storage::url($invitation->banner3) }})">
                    <div class="uk-container">
                        <p class="uk-text-center">CÙNG ĐẾM NGƯỢC THỜI GIAN</p>
                        <h2 class="uk-heading-small uk-text-center script-font">SAVE THE DATE</h2>
                        <svg class="heartbeat" width="64" height="64" viewBox="0 0 24 24"
                            xmlns="http://www.w3.org/2000/svg">
                            <path fill="red"
                                d="M16.5 13.287c-2.475-2.716-5.5-.712-5.5 2.112c0 2.56 1.814 4.035 3.358 5.292l.044.036l.427.35c.571.475 1.121.923 1.671.923s1.1-.448 1.671-.923C19.789 19.73 22 18.224 22 15.399c0-.927-.326-1.767-.853-2.38c-1.075-1.251-2.985-1.556-4.647.268Z" />
                            <path fill="#f1ebe4"
                                d="M8.106 18.247C5.298 16.083 2 13.542 2 9.137C2 4.274 7.5.825 12 5.501C16.5.825 22 4.274 22 9.137c0 .834-.118 1.6-.329 2.31a4.203 4.203 0 0 0-2.619-.947c-.89-.005-1.758.274-2.553.81c-1.39-.933-2.956-1.058-4.33-.395c-1.635.79-2.669 2.556-2.669 4.484c0 2.306 1.149 3.923 2.342 5.095c-.948-.076-1.897-.808-2.88-1.583c-.277-.219-.564-.44-.856-.664Z" />
                        </svg>
                        <div class="uk-grid-small uk-child-width-1-4 uk-flex-center uk-margin-large-top" uk-grid
                            uk-countdown="date: {{ $invitation->event_date }}">
                            <div>
                                <div
                                    class="uk-countdown-number uk-countdown-days uk-padding-small uk-flex uk-flex-center uk-flex-middle blur-bg uk-border-rounded text-white">
                                </div>
                                <div class="uk-countdown-label uk-margin-small uk-text-center">Ngày</div>
                            </div>
                            <div>
                                <div
                                    class="uk-countdown-number uk-countdown-hours uk-padding-small uk-flex uk-flex-center uk-flex-middle blur-bg uk-border-rounded text-white">
                                </div>
                                <div class="uk-countdown-label uk-margin-small uk-text-center">Giờ</div>
                            </div>
                            <div>
                                <div
                                    class="uk-countdown-number uk-countdown-minutes uk-padding-small uk-flex uk-flex-center uk-flex-middle blur-bg uk-border-rounded text-white">
                                </div>
                                <div class="uk-countdown-label uk-margin-small uk-text-center">Phút</div>
                            </div>
                            <div>
                                <div
                                    class="uk-countdown-number uk-countdown-seconds uk-padding-small uk-flex uk-flex-center uk-flex-middle blur-bg uk-border-rounded text-white">
                                </div>
                                <div class="uk-countdown-label uk-margin-small uk-text-center">Giây</div>
                            </div>
                        </div>
                    </div>
                </section>

                <!-- END COUNT DOWN -->

                <!-- INVITATION -->
                <section id="invitation" class="section-invitation">
                    <div class="container">
                        <div class="section-heading">
                            <h2 class="section-title"></h2>
                        </div>
                        <div class="invitation">
                            <div class="invitation-container">
                                <div class="invitation-card">
                                    <img src="{{ Storage::url($invitation->bride_family_image) }}" alt="" />
                                    <h3 class="card-title uk-margin-remove">TƯ GIA NHÀ GÁI</h3>
                                    <address class="uk-margin-remove">
                                        <p>{{ $invitation->bride_family_address }}</p>
                                    </address>
                                    <div class="invitation-body">
                                        <div class="invi_time">
                                            <p class="fw-bold">Vào lúc
                                                <span class="invi_hours">{{ $invitation->bride_family_time }}</span>
                                            </p>
                                            <div class="invi_group_time">
                                                <span class="invi_date_text">Thứ bảy</span>
                                                <span class="invi_date_number">
                                                    <p class="invi_date">{{
                                                        \Carbon\Carbon::parse($invitation->bride_family_date)->format('d')
                                                        }}</p> /
                                                    <p class="invi_month">{{
                                                        \Carbon\Carbon::parse($invitation->bride_family_date)->format('m')
                                                        }}</p>
                                                </span>
                                                <span class="invi_year_text">{{
                                                    \Carbon\Carbon::parse($invitation->bride_family_date)->format('Y')
                                                    }}</span>
                                            </div>
                                            <p class="invi_amlich">Nhằm ngày {{ $invitation->bride_family_lunar_date }}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-link">
                                        <a href="tel:(+84)981742365" class="phone_number">
                                            <i class="ri-phone-fill"></i>
                                        </a>
                                        <a href="" class="phone_number" data-fancybox>
                                            <i class="ri-image-circle-fill"></i>
                                        </a>
                                        <a href="https://maps.app.goo.gl/fPfvAhoTgquMLP8m9" class="invi_map"
                                            target="_blank">
                                            <i class="ri-map-2-fill"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="invitation-card">
                                    <img src="{{ Storage::url($invitation->groom_family_image) }}" alt="" />
                                    <h3 class="card-title uk-margin-remove">TƯ GIA NHÀ TRAI</h3>
                                    <address class="uk-margin-remove">
                                        <p>{{ $invitation->groom_family_address }}</p>
                                    </address>
                                    <div class="invitation-body">
                                        <div class="invi_time">
                                            <p class="fw-bold">Vào lúc
                                                <span class="invi_hours">{{ $invitation->groom_family_time }}</span>
                                            </p>
                                            <div class="invi_group_time">
                                                <span class="invi_date_text">Chủ Nhật</span>
                                                <span class="invi_date_number">
                                                    <p class="invi_date">{{
                                                        \Carbon\Carbon::parse($invitation->groom_family_date)->format('d')
                                                        }}</p> /
                                                    <p class="invi_month">{{
                                                        \Carbon\Carbon::parse($invitation->groom_family_date)->format('m')
                                                        }}</p>
                                                </span>
                                                <span class="invi_year_text">{{
                                                    \Carbon\Carbon::parse($invitation->groom_family_date)->format('Y')
                                                    }}</span>
                                            </div>
                                            <p class="invi_amlich">Nhằm ngày {{ $invitation->groom_family_lunar_date }}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="social-link">
                                        <a href="tel:(+84)981742365" class="phone_number">
                                            <i class="ri-phone-fill"></i>
                                        </a>
                                        <a href="" class="phone_number" data-fancybox>
                                            <i class="ri-image-circle-fill"></i>
                                        </a>
                                        <a href="https://maps.app.goo.gl/fPfvAhoTgquMLP8m9" class="invi_map"
                                            target="_blank">
                                            <i class="ri-map-2-fill"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END INVITATION -->
                <!-- DRESS CODE -->
                <!-- END DRESS CODE -->
                <!-- LỜI CHÚC -->
                <!-- TIN NHẮN -->
                <section id="message" class="section-message uk-background-cover uk-section"
                    style="background-image:url({{ Storage::url($invitation->banner3)}}); display:block">
                    <div class="message-container container uk-position-relative uk-position-z-index">
                        <h2 class="section-title uk-light" style="color:white">
                            Gửi lời chúc đến cặp đôi </h2>
                        <div class="uk-padding-small uk-border-rounded blur-bg" style="border:1px solid white">
                            <h3 class="form-title" style="color:white">Gửi lời chúc</h3>
                            @livewire('form.message', ['invitationId' => $invitation->id])
                        </div>
                    </div>
                </section>
                @livewire('form.attendance', ['invitationId' => $invitation->id, 'invitation' => $invitation])
                <!-- END FORM XÁC NHẬN -->

                <!-- GỬI QUÀ -->
                <section id="gift" class="section-gift" style="display:block">
                    <div class="container">
                        <p class="subtitle"></p>
                        <h2 class="uk-heading-small uk-text-center script-font uk-text-cappercase">GỬI QUÀ ĐẾN CÔ DÂU VÀ
                            CHÚ RỂ</h2>
                        <a href="#box-gift" data-fancybox="" class="btn btn-primary">
                            <svg width="54" height="54" viewBox="0 0 256 256" xmlns="http://www.w3.org/2000/svg">
                                <g fill="#fff">
                                    <path d="M208 128v72a8 8 0 0 1-8 8H56a8 8 0 0 1-8-8v-72Z" opacity=".2" />
                                    <path
                                        d="M216 72h-35.08c.39-.33.79-.65 1.17-1A29.53 29.53 0 0 0 192 49.57A32.62 32.62 0 0 0 158.44 16A29.53 29.53 0 0 0 137 25.91a54.94 54.94 0 0 0-9 14.48a54.94 54.94 0 0 0-9-14.48A29.53 29.53 0 0 0 97.56 16A32.62 32.62 0 0 0 64 49.57A29.53 29.53 0 0 0 73.91 71c.38.33.78.65 1.17 1H40a16 16 0 0 0-16 16v32a16 16 0 0 0 16 16v64a16 16 0 0 0 16 16h144a16 16 0 0 0 16-16v-64a16 16 0 0 0 16-16V88a16 16 0 0 0-16-16m-67-35.49a13.69 13.69 0 0 1 10-4.5h.49A16.62 16.62 0 0 1 176 49.08a13.69 13.69 0 0 1-4.5 10c-9.49 8.4-25.24 11.36-35 12.4c1.2-10.59 4.5-25.98 12.5-34.97m-64.09.36A16.63 16.63 0 0 1 96.59 32h.49a13.69 13.69 0 0 1 10 4.5c8.39 9.48 11.35 25.2 12.39 34.92c-9.72-1-25.44-4-34.92-12.39a13.69 13.69 0 0 1-4.5-10a16.6 16.6 0 0 1 4.82-12.16ZM40 88h80v32H40Zm16 48h64v64H56Zm144 64h-64v-64h64Zm16-80h-80V88h80z" />
                                </g>
                            </svg>

                        </a>
                        <div id="box-gift">
                            <div class="gift-container" id="gift-container">
                                <div class="gift-card">
                                    <div class="gift-qr">
                                        <img src="{{ Storage::url($invitation->event_payment_qr) }}" alt=""
                                            class="groom_qr" style="max-width:100%" />
                                    </div>
                                    <div class="gift-body">
                                    </div>
                                </div>

                            </div>
                        </div>

                    </div>


                </section>
                <!-- END GỬI QUÀ -->

                <!-- THANKYOU -->
                <!-- THANK YOU -->
                <section id="thankyou" class="section-thankyou bg_overlay uk-position-z-index">
                    <div class="uk-overlay uk-overlay-primary uk-position-cover"> </div>
                    <img src="{{ Storage::url($invitation->banner4)}}" alt="" class="thankyou-bg thankyou_img"
                        class="thankyou-bg thankyou_img" style="object-position:" />
                    <div class="thankyou-body container uk-position-relative uk-position-z-index">
                        <h2 class="script-font uk-heading-medium uk-text-center text-white" data-aos="fade-up"
                            data-aos-duration="2000">Thank you!</h2>
                        <p class="thankyou-des" data-aos="fade" data-aos-duration="3000">
                        <p>Sự hiện diện của quý vị là niềm vui và vinh hạnh cho gia đình chúng tôi, Chân thành cám
                            ơn !
                        </p>
                        <p><img loading="lazy" decoding="async" class="aligncenter wp-image-11769 size-thumbnail"
                                src="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/04/12120950/music-150x150.png"
                                alt="" width="150" height="150"
                                srcset="https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/04/12120950/music-150x150.png 150w, https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/04/12120950/music-300x300.png 300w, https://thiepdientu.s3.ap-southeast-1.amazonaws.com/wp-content/uploads/2024/04/12120950/music.png 634w"
                                sizes="(max-width: 150px) 100vw, 150px" /></p>
                        </p>
                        <div class="social">
                            <h4>Chia sẻ thiệp</h4>
                            <div class="social-link">
                                <a href="#" class="facebook">
                                    <i class="ri-facebook-fill"></i>
                                </a>
                                <a href="#" class="instargram">
                                    <i class="ri-instagram-fill"></i>
                                </a>
                                <a href="#" class="twiter">
                                    <i class="ri-twitter-x-line"></i>
                                </a>
                                <a href="#" class="pinterest">
                                    <i class="ri-pinterest-fill"></i>
                                </a>
                            </div>
                        </div>
                </section>
                <!-- END THANK YOU -->
                <!-- END THANKYOU -->
                <script>
                    $(':root').css('--primary-color', '');
 $(':root').css('--secondary-color', '');
 $(':root').css('--bg', '');
                </script>
                <!-- AUDIO -->
                <audio src="/assets_1/wp-content/uploads/2024/01/Shane-Filan-Beautiful-In-White-Official-Video-6.mp3"
                    controls autoplay id="audio">

                </audio>
                <!-- END AUDIO -->
                <!-- FOOTER -->
                <footer>
                    <div class="footer-bottom">
                        <p>Bản quyền 2024 thuộc về Nphdigital</p>
                    </div>
                </footer>
                <button class='toggleAudio'>
                    <i class='ri-volume-mute-fill'></i>
                </button>
                <!-- END FOOTER -->

                <script src="https://cdn.jsdelivr.net/npm/@fancyapps/ui@5.0/dist/fancybox/fancybox.umd.js?ver=1.0.0"
                    id="fancybox js-js"></script>
                <script src="/assets_1/wp-content/themes/wedding-studio/js/uikit.min.js?ver=1.0.0" id="uikit js-js">
                </script>
                <script src="/assets_1/wp-content/themes/wedding-studio/js/uikit-icons.min.js?ver=1.0.0"
                    id="uikit icon-js"></script>
                <script src="/assets_1/wp-content/themes/wedding-studio/js/preloader.js?ver=1.0.0" id="preloader js-js">
                </script>
                <script src="/assets_1/wp-content/themes/wedding-studio/js/aos.js?ver=1.0.0" id="aos js-js"></script>
                <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js?ver=1.0.0"
                    id="swiper slide-js"></script>
                <script src="https://unpkg.com/scrollreveal@4.0.0/dist/scrollreveal.min.js?ver=1.0.0"
                    id="scrollrevea-js"></script>
                <script src="/assets_1/wp-content/themes/wedding-studio/js/main-wedding.js?ver=1.0.0"
                    id="main wedding-js"></script>
                <script src="/assets_1/wp-includes/js/comment-reply.min.js?ver=6.6.2" id="comment-reply-js" async
                    data-wp-strategy="async"></script>

            </body>
<style>
    .form .section-title {
    color: var(--primary-color);
    display: flex;
    text-align: center;
    justify-items: center;
    justify-content: center;
}
</style>
   

    </div>
</div>