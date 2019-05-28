class Playlist {
	constructor(data) {
		this.id = data.id;
		this.name = data.name;
		this.image = data.image;
		this.container = null;
	}

	getId() {
		return this.id;
	}

	build() {
		// var section2 = $('<section>', {
		// 	id: 'secondSection'
		// }).appendTo('main')
		var playlistCon = this.container = $('<div>', {
			class: 'playlist'
		}).appendTo($('#secondSection'))

		playlistCon.css('backgroundImage', 'url(' + this.image + ')');

		var h3Div = $('<div>', {
			class: 'h3Div'
		}).appendTo(this.container)

		var h3 = $('<h3>', {
			text: this.name,
			class: 'playlist-name'
		}).appendTo(h3Div)

		h3.arctext({radius:105});


		 var playBtn = $('<button>', {
			class: 'fas fa-play playlist-play-btn',
			text: '',
			id : 'playerBtn' + this.id,
			click: (function() {

				if ($('#playerBtn' +  this.id).hasClass('fa-play')) {
					this.changePlaylistInPlayer();
					
					console.log(this);
					console.log('inIF');

					console.log($('.fa-pause'));
					$('.fa-pause').each(function(){
						$(this).removeClass('fa-pause');
						$(this).addClass('fa-play');
					});
				
					Playlist.changeToPause(this.id);
					

				} else {
console.log('STOPPED');
					$('#player').trigger('pause');
					Playlist.changeToPlay(this.id);
					
				}
		
			}).bind(this),
		}).appendTo(this.container)
		// this.container.appendTo($('main'))
	}

	static add() {

	}
	play() {

	}

	registerPlaying() {
		// this.container.find('.playlist-play-btn').click(function(event) {
			return new Player(this.id, this.name, this.image);
				

		// });
	}

	changePlaylistInPlayer(){
		currentPlayer.setPrefs(this.id, this.name, this.image);
	}

	static changeToPlay(id){

		console.log('Change to play' + id);
		$('#playerBtn' + id).removeClass('fa-pause');
		$('#playerBtn' +  id).addClass('fa-play');
		
	
	}

	static changeToPause(id){

console.log('Change to pause' + id);
		$('#playerBtn' + id).removeClass('fa-play');
		$('#playerBtn' +  id).addClass('fa-pause');
		
		
	}

}