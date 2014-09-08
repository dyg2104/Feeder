Feeder.Views.CategoryIndexUser = Backbone.View.extend({
	tagName: 'section',
	
	className: 'user-show-page-content',

	initialize: function() {
		this.listenTo(this.collection, 'add sync remove', this.render)
		this.subViews = [];
	},
	
	render: function() {
		var subView;
		var that = this;
		_.each(this.collection.models, function(category){
	      if (category.articles().models.length !== 0) {
				subView = new Feeder.Views.CategoryUserShow({ model: category });
				that.subViews.push(subView);
				that.$el.append(subView.render().$el);
	      }
		});

		return this;
	}

});