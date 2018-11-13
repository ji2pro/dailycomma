//쿠키 함수

function setCookie(exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires="+d.toUTCString();
    let path = window.location.pathname;
        
    //첫번째 가공
    let url = location.href;
    let idx = url.indexOf(path)+1;
    
    //두번째 가공
    url = url.substring(idx);
    idx = url.indexOf('/')+1;
    
    url = url.substring(idx);
    
    console.log(url);
    console.log(absolutePath);
    document.cookie = "url" + "=" +url+ ";" + expires + ";path=/";

    
    location.href = absolutePath+"loginChoice.do";
}
