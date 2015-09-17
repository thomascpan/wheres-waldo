// Variables
var div = $('#character-select');
var characterSelectTemplate = "";


function clickBoard() {
	$('.board-container').click(function(event) {
		console.log("X: " + event.offsetX + " Y: " + event.offsetY); /* Debuging Tool */
		createDiv(event.offsetX, event.offsetY, this)
	});
}


// if position is below a certain height make box top-right

function createDiv(x, y, object) {
	console.log(div.length);
	if (div.length == false) {
		$(".board-container").append("<div id='character-select'>Hello</div>");
		div = $('#character-select');
	}
	div.css( {
		position: "absolute",
		top: y,
		left: x,
		border: "2px solid red",
		backgroundColor: "white"
	});
}

$(document).ready(function() {
	clickBoard();
});