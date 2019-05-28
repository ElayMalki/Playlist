class DynamicPopup extends FormPopup {
	constructor(url, id) {
		super();
		this.url = url;
		this.id = id;
	}

	build() {
		super.build();
		fetch(this.url)
		.then(response => response.text())
		.then(html => {
			$('.popup').append($(html));
			$('form').attr('data-play_id', this.id);
			$('#deletePopup').attr('data-play_id', this.id);
		});
	}
}