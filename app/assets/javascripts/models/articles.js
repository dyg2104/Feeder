Feeder.Collections.Articles = Backbone.Collection.extend({
	model: Feeder.Models.Article,

	getOrFetch: function(id) {
		var articles = this;
		var article;

		if(article = articles.get(id)) {
			article.fetch();
		} else {
			article = new Feeder.Models.Article({ id: id });
			article.fetch({
				success: function() {
					articles.add(article);
				}
			});
		}

		return article;
	},

});