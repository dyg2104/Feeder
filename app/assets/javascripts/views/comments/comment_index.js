Feeder.Views.CommentIndex = Backbone.View.extend({
	template: JST['comments/index'],
	
	className: 'article-modal-comments-pane',
	
	initialize: function(options){
		this._article = options.article;
	  this.listenTo(this.collection, 'add sync remove', this.render);
	},

	render: function() {
		var content = this.template({ comments: this.collection });
		this.$el.html(content);
		return this;
	}
	
});