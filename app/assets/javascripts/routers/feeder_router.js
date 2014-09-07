Feeder.Routers.FeederRouter = Backbone.Router.extend({
	routes: {
		"" : "homePage",
    "categories" : "categoriesPage"
    // "categories/:id" : "categoryPage",
    // "feeds/:id" : "feedPage",
		// "savedArticles" : "showSaved",
    // "user/categories/:id" : "categoryFilter",
    // "user/feeds/:id" : "feedFilter",
    // "searchResults/:query" : "search"
	},

	homePage: function() {
		// var that = this;
		// $.ajax({
		// 	url: "/api/current_user_id",
		// 	success: function(response) {
		// 		if (response.success) {
		// 			var userView = new Feeder.Views.UserShow({ model: Feeder.current_user });
		// 			that._swapView(userView);
		// 	          window.current_user = true;
		// 		}
		// 	}
		// });
	},
	
  categoriesPage: function() {
		console.log("HERE");
    var categoriesView = new Feeder.Views.CategoryIndex({
      collection: Feeder.all_categories
    });
		console.log(categoriesView);
    this._swapView(categoriesView);
  },
	//
	//   categoryFilter: function(id) {
	//     var category = Feeder.current_user.categories().get(id);
	//     var filteredView = new Feeder.Views.CategoryNavFilter({
	//       model: category
	//     });
	//     this._swapView(filteredView);
	//   },
	//
	//   feedFilter: function(id) {
	//     var that = this;
	//
	//     Feeder.current_user.categories().each(function(category) {
	//       category.feeds().each(function(feed) {
	//         if (feed.id === parseInt(id)) {
	//           var filteredView = new Feeder.Views.FeedNavFilter({
	//             model: feed
	//           });
	//           that._swapView(filteredView);
	//         }
	//       });
	//     });
	//   },
	//
	//   showSaved: function() {
	// 	var that = this;
	// 	$.ajax({
	// 		url: "/api/showSaved",
	// 		success: function(response) {
	//         var articles = new Feeder.Collections.Articles(response);
	//   			var savedView = new Feeder.Views.ArticleSavedShow({ collection: articles });
	// 			that._swapView(savedView);
	// 		}
	// 	});
	//   },
	//
	//
	//   categoryPage: function(id) {
	//     var category = window.categories.getOrFetch(id);
	//     var categoryView = new Feeder.Views.CategoryCategoryShow({
	//       model: category
	//     });
	//     this._swapView(categoryView);
	//   },
	//
	//   feedPage: function(id) {
	//     var feed = window.feeds.getOrFetch(id);
	//     var feedView = new Feeder.Views.FeedFeedShow({ model: feed });
	//     this._swapView(feedView);
	//   },
	//
	//   userPage: function(id) {
	// 	var that = this;
	// 	$.ajax({
	// 		url: "/api/current_user_id",
	// 		success: function(response) {
	//         if (response.success && (id === response.id.toString())) {
	//           that.navigate("", true);
	// 			} else {
	// 				var user = window.users.getOrFetch(id);
	// 				var userView = new Feeder.Views.UserShow({ model: user });
	// 				that._swapView(userView);
	// 			}
	// 		}
	// 	});
	//   },
	//
	//   search: function(query) {
	//     var that = this;
	//     $.ajax({
	//       url: ("/api/search"),
	//       type: "GET",
	//       data: {
	//         search: { query: query }
	//       },
	//       success: function(response) {
	//         if (response.results === "none") {
	//           var feeds = new Feeder.Collections.Feeds();
	//           var resultsView = new Feeder.Views.Results({ collection: feeds });
	//         } else {
	//           var feeds = new Feeder.Collections.Feeds(response);
	//           var resultsView = new Feeder.Views.Results({ collection: feeds });
	//         }
	//
	//         that._swapView(resultsView);
	//       }
	//     });
	//   },

	_swapView: function(newView) {
		if(this.currentView) {
			this.currentView.remove();
		}

		$(".page").html(newView.render().$el);

		this.currentView = newView;
	}

});