window.Feeder = {
  Models: {},
  Collections: {},
	Subsets: {},
  Views: {},
  Routers: {},
  initialize: function() {
    // alert('Hello from Backbone!');
    // Feeder.all_users = new Feeder.Collections.Users();
    Feeder.all_categories = new Feeder.Collections.Categories();
    Feeder.all_feeds = new Feeder.Collections.Feeds();
    Feeder.all_articles = new Feeder.Collections.Articles();
		Feeder.all_comments = new Feeder.Collections.Comments();
		
		Feeder.all_categories.fetch();
		
    Feeder.user_categories = new Feeder.Subsets.UserCategoriesSub([], {
      parentCollection: Feeder.all_categories
    });
    Feeder.user_feeds = new Feeder.Subsets.UserFeedsSub([], {
      parentCollection: Feeder.all_feeds
    });
    Feeder.user_articles = new Feeder.Subsets.ArticlesSub([], {
      parentCollection: Feeder.all_articles
    });
		
		Feeder.user_saved_articles = new Feeder.Subsets.ArticlesSub([], {
			parentCollection: Feeder.all_articles
		});

    Feeder.user = new Feeder.Models.User();
    Feeder.user.fetch({
      success: function(response) {
				if (response.get("success") === false) {
					Feeder.user_status = false;
					Feeder.router = new Feeder.Routers.FeederRouter();
			 		Backbone.history.start();
				} else {
					Feeder.user_status = true;
	        Feeder.user_categories.set(response.get("categories"));
	        Feeder.user_feeds.set(response.get("feeds"));
	        Feeder.user_articles.set(response.get("articles"));
	        Feeder.user.setAttrs(Feeder.user_categories,
	                             Feeder.user_feeds,
	                             Feeder.user_articles);
	        Feeder.router = new Feeder.Routers.FeederRouter();
	        Backbone.history.start();
				}
			}  
    });	
  }
};


