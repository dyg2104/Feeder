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
	        
					var category = Feeder.user_categories.get(that.model.get("category_id"));
					
					if (!category) {
						var category_attributes = Feeder.all_categories.get(that.model.get("category_id")).attributes;
						category = new Feeder.Models.Category(category_attributes);
						
						Feeder.user_categories.add(category);
						Feeder.user_feeds.add(that.model);
						Feeder.user_articles.add(that.model.articles().models);
					} else {
						if (Feeder.user_feeds.where({ id: that.model.id}).length === 0) {
							Feeder.user_feeds.add(that.model);
							Feeder.user_articles.add(that.model.articles().models);
						} else {
							var articles_to_remove = Feeder.user_articles.where({ feed_id: that.model.id });
							Feeder.user_articles.remove(articles_to_remove); 
							Feeder.user_feeds.remove(that.model);
							if (Feeder.user_feeds.where({ category_id: that.model.category_id }).length === 0) {
								Feeder.user_categories.remove(category);
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