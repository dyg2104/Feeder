Feeder.Views.FeedShow = Backbone.View.extend({
	template: JST['feeds/show'],
	
	tagName: "section",
	
	className: "feed-show",

	initialize: function() {
		this.listenTo(this.model, 'add sync', this.render);
		this.subViews = [];
	},

  events: {
    'click .feed-status-button' : 'changeFeedStatus',
    'submit .general-search-form' : 'search'
  },
	
	render: function() {
		var content = this.template({ feed: this.model });
		this.$el.html(content);

		var subView;
		var that = this;
		
		this.model.articles().each( function(article) {
			subView = new Feeder.Views.ArticleShow({ model: article });
			that.subViews.push(subView);
			that.$el.find(".feed-show-content").append(subView.render().$el);
		});

    if (Feeder.user_status && this.model.get("user_has_feed")) {
      $(".feed-status-button").text("Unfollow");
    }

		return this;
	},

  changeFeedStatus: function(event) {
    event.preventDefault();
    var that = this;
		
    $.ajax({
      url: ("/user_feeds/" + that.model.id),
      type: "PATCH",
      success: function(response) {
				if (response.success) {
	        
					var category = Feeder.user._categories.get(that.model.get("category_id"));
					
					if (!category) {
						var category_attributes = Feeder.all_categories.get(that.model.get("category_id")).attributes;
						category = new Feeder.Models.Category(category_attributes);
						category.feeds().add(that.model);
						Feeder.user._categories.add(category);
						// Feeder.user_feeds.add(that.model);
					} else {
						//remember to remove them too
						console.log(category.feeds().models.indexOf(that.model));
						if (!category.feeds().models.indexOf(that.model)) {
							category.feeds().add(that.model);
							// Feeder.user_feeds.add(that.model);
						} else {
							category.feeds().remove(that.model);
							// Feeder.user_feeds.remove(that.model);
							
							var articles_to_remove = Feeder.user_articles.where({feed_id: that.model.id});
							Feeder.user_articles.remove(articles_to_remove);
							
							if (category.feeds().length === 0) {
								Feeder.user._categories.remove(category);
								// Feeder.user_categories.remove(category);
							}
						}
					}
								
					if ($(".feed-status-button").text() === "Follow") {
	          $(".feed-status-button").text("Unfollow");
	        } else if ($(".feed-status-button").text() === "Unfollow"){
	          $(".feed-status-button").text("Follow");
	        }
					
				} else {
					alert("Error.");
				}
        
      }
    });
  },

  search: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();
    searchLink = "searchResults/" + params.query
    Feeder.router.navigate(searchLink, {trigger: true});
  }
});