Feeder.Views.FeedNavFilter = Backbone.View.extend({
	template: JST['feeds/nav_filter'],

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
		this.subViews = [];
	},

  events: {
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
			that.$el.find(".feed-articles").append(subView.render().$el);
		});

		return this;
	},

  search: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();
    searchLink = "searchResults/" + params.query
    Feeder.router.navigate(searchLink, {trigger: true});
  }
});