Feeder.Views.CategoryIndex = Backbone.View.extend({
  template: JST['categories/index'],
	
	tagName: "section",
	
	className: "category-index",

  initialize: function() {
    this.listenTo(this.collection, 'add sync remove', this.render)
  },

  events: {
    'submit .categories-search-form' : 'search'
  },

  render: function() {
    var content = this.template({ categories: this.collection.models});
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