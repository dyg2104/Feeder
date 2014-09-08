Feeder.Views.CategoryNav = Backbone.View.extend({
	template: JST['categories/nav'],

	tagName: "p",

	className: "nav-category",

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
	  this.subViews = [];
	},
	
	render: function() {
    var content = this.template({ category: this.model });
    this.$el.html(content);

    var feeds = Feeder.user_feeds.where({ category_id: this.model.id });
    var that = this;

    _.each(feeds, function(feed) {
      var subView = new Feeder.Views.FeedNav({ model: feed })
      that.subViews.push(subView);
      that.$el.find(".nav-append-feeds").append(subView.render().$el);
    });

    return this;
	}

});