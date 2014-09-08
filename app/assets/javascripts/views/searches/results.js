Feeder.Views.Results = Backbone.View.extend({
	template: JST['searches/results'],
	
	tagName: 'section',
	
	className: 'search-results',

	initialize: function() {
		this.listenTo(this.collection, 'add sync remove', this.render);
	},
	
	events: {
		'submit .general-search-form' : 'search'
	},
	
	render: function() {
    var content = this.template({
      feeds: this.collection
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