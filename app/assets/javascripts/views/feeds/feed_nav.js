Feeder.Views.FeedNav = Backbone.View.extend({
	template: JST['feeds/nav'],

  tagName: "a",

  className: "nav-category-feed",

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
		this.subViews = [];
	},

	render: function() {
    var content = this.template({ feed: this.model });
    this.$el.html(content);
    link = "#user/feeds/" + this.model.get("id");
    this.$el.attr("href", link);
    return this;
	}

});