Feeder.Views.CategoryUserShow = Backbone.View.extend({
	template: JST['categories/show_user'],

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
		this.subViews = [];
	},

	render: function() {
		var content = this.template({ category: this.model });
		this.$el.html(content);

		var subView;
		var that = this;
		_.each(this.model.articles().models, function(article){
			subView = new Feeder.Views.ArticleShow({ model: article });
			that.subViews.push(subView);
			that.$el.append(subView.render().$el);
		});

		return this;
	}
});