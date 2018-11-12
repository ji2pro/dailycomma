//쿠키 함수

function setCookie(exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = "url" + "=" +location.href+ ";" + expires + ";path=/";

    location.href = "loginChoice.do";
}
