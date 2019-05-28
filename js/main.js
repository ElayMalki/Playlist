fetch("api/playlist")
.then(response => response.json())
.then(playlist => {
	console.log(playlist.data);
	init(playlist.data);

	$('input[type=search]').keyup(function(event) {
		init(
			playlist.data.filter(pl => pl.name.toLowerCase().includes($(event.target).val().toLowerCase()))	
			)
	});
})


var playListRef;
var currentPlayer;


function init(playlist) {
	$('main').empty();
	buildSections();
	var playLists = [];
	// $('#firstSection').remove();
	playlist.forEach(playlistObj => {
		console.log(playlistObj);
		var playlist = new Playlist(playlistObj);
		playlist.build();
		playLists.push(playlist);
		//playlist.registerPlaying();
	})
playListRef = playlist;
	currentPlayer = playLists[0].registerPlaying();

}

function buildSections() {
	var section1 = $('<section>', {
			id: 'firstSection'
		}).appendTo('main')

	var section2 = $('<section>', {
			id: 'secondSection'
		}).insertAfter(section1)
}

$('.addPlaylistBtn').click(function() {
	const formPopup = new DynamicPopup('./views/addPlaylistForm.html');
	formPopup.build();
	formPopup.closeWithEsc();
});


var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
var currentScrollPos = window.pageYOffset;
  if ($(window).width() < 800 && prevScrollpos < currentScrollPos) {
  	console.log('sdfgsdfg')
    document.querySelector("header").style.top = "-110px";
    document.querySelector("#firstSection").style.top = "20px";
    document.querySelector(".buttom-border-header").style.top = "-105px";
  } else {
    document.querySelector("header").style.top = "0";
    document.querySelector("#firstSection").style.top = "110px";
    document.querySelector(".buttom-border-header").style.top = "0px";
  }
  prevScrollpos = currentScrollPos;
}
