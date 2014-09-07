Feeder.Models.Category = Backbone.Model.extend({
	urlRoot: "/api/categories",

	feeds: function() {
		this._feeds = this._feeds || new Feeder.Subsets.FeedsSub([], {
			parentCollection: Feeder.all_feeds
		});
		return this._feeds;
	},

	articles: function() {
		this._articles = this._articles || new Feeder.Subsets.ArticlesSub([], {
			parentCollection: Feeder.all_articlesss
		});
		return this._articles;
	},

	parse: function(response) {
		if(response.feeds) {
			this.feeds().set(response.feeds, { parse: true });
			delete response.feeds;
		}

		if(response.articles) {
			this.articles().set(response.articles, { parse: true });
			delete response.articles;
		}

		return response;
	}
});