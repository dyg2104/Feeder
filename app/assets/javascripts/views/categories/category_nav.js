Feeder.Views.CategoryNav = Backbone.View.extend({
	template: JST['categories/nav'],

	tagName: "p",

	className: "nav-category",

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
		var feeds = this.model.feeds();
		this.listenTo(feeds, 'add sync remove', this.render);
	  this.subViews = [];
	},
	
	render: function() {
    var content = this.template({ category: this.model });
    this.$el.html(content);

    var feeds = this.model.feeds();
    var that = this;

    feeds.each(function(feed) {
      var subView = new Feeder.Views.FeedNav({ model: feed });
      that.subViews.push(subView);
      that.$el.find(".nav-append-feeds").append(subView.render().$el);
    });
		
    return this;
	}

});