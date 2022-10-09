function revealMenu() {
	var element = document.getElementById("links-menu");
	element.classList.toggle("menuHide");
	var menuBar = document.getElementById("mobileMenu");
	menuBar.classList.toggle("menuToggled");
	var oneCycle = document.getElementsByClassName("ranOnce").length;
	var text = menuBar.innerHTML;
	if (text == "Show Menu" || oneCycle == 0) {
		menuBar.innerHTML = "Hide Menu";
	} else {
		menuBar.innerHTML = "Show Menu";
	}
	
	if (oneCycle == 0) {
	menuBar.classList.toggle("ranOnce");
	}
}

function copyToClipboard() {
	const url = document.createElement('textarea');
	url.value = window.location.href;
	document.body.appendChild(url);
	url.select();
	document.execCommand('copy');
	document.body.removeChild(url);
	
	var modal = document.getElementById('copy-modal');

	modal.className = "show";
	setTimeout(function(){modal.className = modal.className.replace("show","");}, 3000);
}

// function hideBox() {
// 	var element = document.getElementById("warning");
// 	element.classList.toggle("hideBox");
// }
//
// function test() {
// 		var img = document.getElementById("comic-image");
// 		var width = img.naturalWidth;
// 		console.log(width);
// 		if (width > 1500) {
// 			var element = document.getElementById("comic-page");
// 			element.classList.toggle("zoomCursor");
// 		}
// 		var element = document.getElementById("comic-page");
// 		var widthTwo = element.clientWidth;
// 		if (widthTwo <= 650) {
// 			element.classList.toggle("linkCursor");
// 		}
// }
//
// function zoomImage(nextPage) {
// 	console.log(nextPage);
// 	var screen;
// 	if (self.innerWidth) {
// 		screen = self.innerWidth;
// 	}
//
// 	if (document.documentElement && document.documentElement.clientWidth) {
// 		screen = document.documentElement.clientWidth;
// 	}
//
// 	if (document.body) {
// 		screen = document.body.clientWidth;
// 	}
//
// 	if (screen > 650) {
// 		var img = document.getElementById("comic-image");
// 		var width = img.naturalWidth;
// 		console.log(width);
// 		if (width > 1500) {
//             var element = document.getElementById("comic-image");
//             element.classList.toggle("zoomImage");
//             var element = document.getElementById("blankPageWide");
//             element.classList.toggle("blankPageAppear");
// 		}
// 	} else {
// 		window.location.href = `/comic/${nextPage}/#comic-page`;
// 	}
//
// }