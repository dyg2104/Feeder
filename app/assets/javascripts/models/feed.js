Feeder.Models.Feed = Backbone.Model.extend({
	urlRoot: "/api/feeds",
	
	articles: function() {
		this._articles = this._articles || new Feeder.Subset.ArticlesSub([], {
			parentCollection: Feeder.all_articles
		});
		return this._articles;
	},
	
	parse: function(response) {
		if(response.articles) {
			this.articles().set(response.articles, { parse: true });
			delete response.articles;
		}

		return response;
	}
});