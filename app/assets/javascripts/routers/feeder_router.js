Feeder.Routers.FeederRouter = Backbone.Router.extend({
	routes: {
		"" : "homePage",
    "categories" : "categoriesPage",
    "categories/:id" : "categoryPage",
    "feeds/:id" : "feedPage",
		"savedArticles" : "showSaved",
    "user/categories/:id" : "categoryFilter",
    "user/feeds/:id" : "feedFilter",
    "searchResults/:query" : "search"
	},

	homePage: function() {
		if (Feeder.user_status) {
	    Feeder.user.setAttrs(Feeder.user_categories,
	                         Feeder.user_feeds,
	                         Feeder.user_articles);
			var userView = new Feeder.Views.UserShow({ model: Feeder.user });
			this._swapView(userView);
		}
	},
	
  categoriesPage: function() {
    var categoriesView = new Feeder.Views.CategoryIndex({
      collection: Feeder.all_categories
    });
    this._swapView(categoriesView);
  },
	
  categoryPage: function(id) {
    var category = Feeder.all_categories.getOrFetch(id);
    var categoryView = new Feeder.Views.CategoryCategoryShow({
      model: category
    });
    this._swapView(categoryView);
  },
	
  feedPage: function(id) {
    var feed = Feeder.all_feeds.getOrFetch(id);
    var feedView = new Feeder.Views.FeedShow({ model: feed });
    this._swapView(feedView);
  },
	

  categoryFilter: function(id) {
    Feeder.user.setAttrs(Feeder.user_categories,
                         Feeder.user_feeds,
                         Feeder.user_articles);
												 
		var userView = new Feeder.Views.UserShow({ model: Feeder.user });
    var category = Feeder.user_categories.get(id);
    var filteredView = new Feeder.Views.CategoryNavFilter({
      model: category
    });
    this._swapView(filteredView);
  },

  feedFilter: function(id) {
		Feeder.user.setAttrs(Feeder.user_categories,
                         Feeder.user_feeds,
                         Feeder.user_articles);
												 console.log(id);
		
		feed = Feeder.user_feeds.get(id);
    var filteredView = new Feeder.Views.FeedNavFilter({
      model: feed
    });
		
    this._swapView(filteredView);
  },

  showSaved: function() {
		var that = this;
		$.ajax({
			url: "/api/showSaved",
			success: function(response) {
	        var articles = new Feeder.Collections.Articles(response);
	  			var savedView = new Feeder.Views.ArticleSaved({ collection: articles });
				that._swapView(savedView);
			}
		});
  },
	
  search: function(query) {
    var that = this;
		
    $.ajax({
      url: "/api/search",
      type: "GET",
      data: {
        search: { query: query }
      },
      success: function(response) {
        if (response.success === false) {
          var feeds = new Feeder.Subsets.FeedsSub([], {
          	parentCollection: Feeder.all_feeds
          });
          var resultsView = new Feeder.Views.Results({ collection: feeds });
        } else {
          var feeds = new Feeder.Subsets.FeedsSub([], {
          	parentCollection: Feeder.all_feeds
          });
					feeds.set(response);
          var resultsView = new Feeder.Views.Results({ collection: feeds });
        }

        that._swapView(resultsView);
      }
    });
  },

	_swapView: function(newView) {
		if(this.currentView) {
			this.currentView.remove();
		}

		$(".page").html(newView.render().$el);

		this.currentView = newView;
	}

});