Feeder.Collections.Feeds = Backbone.Collection.extend({
	model: Feeder.Models.Feed,
	
	getOrFetch: function(id) {
		var feeds = this;
		var feed;
		
		if(feed = feeds.get(id)) {
			feed.fetch();
		} else {
			feed = new Feeder.Models.Feed({ id: id});
			feed.fetch({
				success: function () {
					feeds.add(feed);
				}
			});
		}
		
		return feed;
	}
});