Feeder.Views.CategoryCategoryShow = Backbone.View.extend({
	template: JST['categories/show'],
	
	tagName: "section",
	
	className: "category-show",

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
	},
	
	events: {
		'submit .general-search-form' : 'search'
	},
	
	render: function() {
		var category = this.model;
    var feeds = this.model.feeds();

    var content = this.template({
      category: category,
      feeds: feeds
    });

	  this.$el.html(content);
		return this;
	},

  search: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();
    searchLink = "searchResults/" + params.query
    Feeder.router.navigate(searchLink, {trigger: true});
  }
});