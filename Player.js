class Player {
	constructor(playlistId, playlistName, playlistImg) {
		this.playlistId = playlistId;
		this.playlistName = playlistName;
		this.playlistImg = playlistImg;
		this.getSongs();
	}

	getSongs(callback) {
		$.get('api/playlist.php' + this.playlistId + '/songs', function(response) {
			// $('#firstSection').remove();
			this.songs = response.data.songs;
			this.build();
			if(callback){
				callback();
			}
		}.bind(this));
	}

	changePlayerPrefs(){
		
		$('.player2-artwork').css({'background-image':'url(' + this.playlistImg + ')'});
		$('#title').text(this.playlistName);
		$('.playing-now-span').text(this.songs[0].name);
		console.log(this.songs[0].url);
		$('.audio-player').attr("src",this.songs[0].url);
		$('#player').trigger('play');
		$('.player-songs-list').empty();
		$('.player-songs-list').append(this.addSongs.bind(this));
	}

	setPrefs(playlistId, playlistName, playlistImg){
		this.playlistId = playlistId;
		this.playlistName = playlistName;
		this.playlistImg = playlistImg;
		this.getSongs(()=>{this.changePlayerPrefs()});
		
	}

	build() {
		// debugger;
		$('#firstSection').empty();

		var container = $('<div>', {
			class: 'player2'
		})
		var playerDiv = $('<div>', {
			class: 'player2-artwork',
			css: {'background-image':'url(' + this.playlistImg + ')'}
		}).appendTo(container)
		console.log(this.playlistImg);
		var playerMain = $('<div>', {
			class: 'player2-main'
		}).appendTo(container)
		var h3Player = $('<h3>', {
			id:'title',
			text: this.playlistName
		}).appendTo(playerMain)
		console.log(h3Player)
		$('<h6>', {
			text: 'Now playing:'
		}).appendTo(playerMain)
		$('<span>', {
			text: this.songs[0].name,
			class: 'playing-now-span'
		}).appendTo(playerMain)

		var audioPlayer = $('<audio>', {
			class: 'audio-player',
			preload: 'auto',
			controls: true,
			id:'player',
			controlsList: 'nodownload',
			src: this.songs[0].url,
			'data-song_id': 0,
		}).on('ended', this.playNext.bind(this)).appendTo(playerMain)

		audioPlayer.on('play', (e)=>{Playlist.changeToPause(this.playlistId); this.matchCssPlay();})
		audioPlayer.on('pause', (e)=> {Playlist.changeToPlay(this.playlistId); this.matchCssPause();})

		var songsList = $('<div>', {
			class: 'player-songs-list'
		}).appendTo(playerMain)

		var deleteBtn = $('<button>' ,{
			class: 'deleteBtn btn fas fa-trash-alt',
			click: (function(event) {
				event.preventDefault();
				var popup = new DynamicPopup('./views/deletePopup.html', this.playlistId);
				popup.closeWithEsc();
				popup.build();
				$('#close').remove();

			}.bind(this))
		}).appendTo(playerMain)

		var editBtn = $('<button>' ,{
			class: 'editBtn btn fas fa-edit',
			click: this.editSongsform.bind(this)
		}).appendTo(playerMain)


		container.appendTo($('#firstSection'))

		$('.player-songs-list').append(this.addSongs.bind(this));
		$('[data-song_index="0"]').addClass("bold");
		songsList.find('.songs-row:first').css('font-weight', 'bold');
	}

	matchCssPause() {
		$('.player2-artwork').css('animation-play-state', 'paused')
	}



	matchCssPlay() {
		$('.player2-artwork').css('animation-play-state', 'running');
	}

	addSongs(e) {

		$.each(this.songs, function(index, val) {
			var newIndex = index + 1 + '. ';
			console.log(val.name);
			var songRow = $('<span>', {
				class: 'songs-row',
				text: val.name,
				click: function(e) {
					// var index = e.target.dataset.song_id;
					$('#player').attr({
						src: val.url,
						'data-song_id': index,
						autoplay: true,
					});
					$('.playing-now-span').text(val.name);
					$('.songs-row').css('font-weight', 'normal');
						e.target.style.fontWeight = 'bold';
				}
			}).appendTo($('.player-songs-list'))
		});
	}

	playSign(index) {

		$("['song_index'="+index+"]").css("font-weight", "bold")
		$('<span>', {
			class: "play-sign",
			text: "▶",
		}).prependTo($("['song_index'=index]"));
	}

	playNext(e) {
		var index = ++e.target.dataset.song_id;
		if (index >= this.songs.length) {return false;}
		$('.playing-now-span').text(this.songs[index].name);
		$('.songs-row').css('font-weight', 'normal');
		document.querySelectorAll('.songs-row')[index].style.fontWeight = 'bold';
		e.target.src = this.songs[index].url;
		e.target.play();
	}

	editSongsform()	{
		localStorage.setItem('songsList', JSON.stringify(this.songs));
		const editSongsform = new DynamicPopup('./views/editSongsForm.html', this.playlistId);
		editSongsform.build();
		editSongsform.closeWithEsc();

	}
}