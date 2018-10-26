/**
 * 
 */
setInterval(function() {
				var timer = new Date();
				var h = timer.getHours();
				var m = timer.getMinutes();
				var s = timer.getSeconds();
document.getElementById('clock').innerHTML = h + ":" + m + ":" + s; }, 1000);