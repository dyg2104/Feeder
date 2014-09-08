Feeder.Views.UserShow = Backbone.View.extend({
	template: JST['users/show'],

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
		this.subViews = [];
	},

  events: {
    'submit .general-search-form' : 'search'
  },

	render: function() {
		var content = this.template({ user: this.model });
		this.$el.html(content);
		
		var subView = new Feeder.Views.CategoryIndexUser({ collection: this.model._categories });
		this.$el.append(subView.render().$el)

		return this;
	},

  search: function(event) {
    event.preventDefault();
    var params = $(event.currentTarget).serializeJSON();
    searchLink = "searchResults/" + params.query
    Feeder.router.navigate(searchLink, {trigger: true});
  }
});