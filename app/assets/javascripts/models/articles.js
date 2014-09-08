Feeder.Models.Article = Backbone.Model.extend({
	comments: function() {
		this._comments = this._comments || new Feeder.Subsets.CommentsSub([], {
			parentCollection: Feeder.all_comments
		});
		return this._comments;
	},

	parse: function(response) {
		if(response.comments) {
			this.comments().set(response.comments, { parse: true });
			delete response.articles;
		}

		return response;
	}
});