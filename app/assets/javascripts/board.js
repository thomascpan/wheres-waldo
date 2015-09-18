/*   Variables   */
var characterList;
var clickPositionX;
var clickPositionY;
var characterSelectDiv = $('#character-select');
var characterOptionButtons = $('button.character-option');
var characterSelectTemplate = "<div id='character-select'></div>";

/*   Functions   */
function getCharacterList() {
	characterList = $('.board').data('characters');
	// console.log(characterList);
}

// Click Handler
function clickBoard() {
	$('.board-img-container').click(function(event) {
		clickPositionX = event.offsetX;
		clickPositionY = event.offsetY;
		console.log([clickPositionX, clickPositionY]); /* Debuging Tool */
		createCharacterSelect(clickPositionX, clickPositionY);
	});
}

function createCharacterSelect(x, y) {
	if (characterSelectDiv.length == false) {
		$(".board-container").append(characterSelectTemplate);
		characterSelectDiv = $('#character-select');		
		addCharacterOptions();
		if (y > 500 ) {
			y -= characterSelectDiv.outerHeight();
		}
		characterSelectDiv.css( {
			position: "absolute",
			padding: "10px",
			top: y, 
			left: x, 
			border: "2px solid red",
			backgroundColor: "white"
		});		
	} else {
		characterSelectDiv.remove();
		characterSelectDiv = $('#character-select');	
	}
}

function addCharacterOptions() {
	characterSelectDiv.empty();
	characterList.forEach(function(element, index) {
		// temp+=("<div id='" + element.name + "'>" + element.name + "</div>");
		characterSelectDiv.append(createOptionTemplate(element.name));
	});
	characterOptionButtons = $('button.character-option');
	characterOptionButtons.css({
		display: "block",
		width: "100%", 
		textAlign: "center"
	})
}

function createOptionTemplate(name) {
	var template = "<button class='character-option'>" + name + "</button>"
	return template;
}





// Test

function createDivOverCharacters() {
	characterList.forEach(function(element, index) {
		$('.board-container').append("<div id='" + element.name + "-cover'></div>");
		$("#" + element.name + "-cover").css( {
			position: "absolute",
			top: element.y_pos,
			left: element.x_pos,
			width: element.width,
			height: element.height,
			backgroundColor: "black"
		});	
	});
}


// Variables
var errorMsg = "<div class='board-error-msg'>Sorry. Try again.</div>"
var successMsg = "<div class='board-success-msg'>You got it!</div>"


function checkWin() {
	if (characterLeft === 0) {
		alert("Congratulations! You finished!");
	}
}

function checkUserSelect(x, y, character) {
	/* 	object with name value character
			if x is within coordinate range and y is within coordinate range,
				characterList remove object with name value character.
				remove character-thumbnail too 
			else
				do nothing
				console.log try again
			end
	*/ 
}

$(document).ready(function() {
	getCharacterList();
	clickBoard();
});

// $().ready(function() {
// 	alert(characters);
// 	console.log(characters);
// })


// Ghetto way to keep track of time 
// var a = Time.now();
// var b = Time.now(); 
// var seconds = (b-a)/1000;