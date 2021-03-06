Feeder.Models.User = Backbone.Model.extend({
	url: "/api/user",

  setAttrs: function(categories, feeds, articles) {
		
		if (feeds.models.length !== 0 && articles.models.length !== 0) {
	    articles.each(function(article) {
	      category = categories.get(article.get("category_id"));
	      feed = feeds.get(article.get("feed_id"));
	      category.articles().add(article);
	      feed.articles().add(article);
	    });

	    feeds.each(function(feed) {
	      category = categories.get(feed.get("category_id"));
	      category.feeds().add(feed);
	    })
		}

    this._categories = categories;
  },	

  parse: function (response) {
    if ((typeof this._categories !== "undefined") && response.categories) {
      this._categories().set(response.categories);
      delete response.categories;
    }

    return response;
  }
});