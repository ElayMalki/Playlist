class Update {
	constructor () {
		console.log('Update');

	}

	initPage (){
		$.get("api/playlist" , function(playlists) {
			

			console.log(playlists.data)
			init(playlists.data);
			// var playlist = new Playlist(playlists);
			// playlist.build();
			// playlist.registerPlaying();
		});
	}
}