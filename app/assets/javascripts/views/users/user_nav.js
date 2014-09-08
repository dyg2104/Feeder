Feeder.Views.UserNav = Backbone.View.extend({
	template: JST['users/nav'],

	tagName: "section",

  className: "nav-hidden-scroll",

	initialize: function() {
	  this.listenTo(this.model, 'add sync remove', this.render);
		this.listenTo(Feeder.user_categories, 'add sync remove', this.render);
		this.subViews = [];
	},
	
	render: function() {
    var content = this.template();
    this.$el.html(content);

    var categories = Feeder.user_categories;
    var that = this;

    categories.each(function(category) {
      var subView = new Feeder.Views.CategoryNav({ model: category })
      that.subViews.push(subView);
      that.$(".nav-category-all").append(subView.render().$el);
    });
		
    return this;
  }

});