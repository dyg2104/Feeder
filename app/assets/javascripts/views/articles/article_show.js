Feeder.Views.ArticleShow = Backbone.View.extend({
	template: JST['articles/show'],

	className: 'article-show',

	initialize: function() {
		this.listenTo(this.model, 'add sync remove', this.render);
	},

	render: function() {
		var content = this.template({ article: this.model, unescapeHtml: this.unescapeHtml });
		this.$el.html(content);
		return this;
	},
	//
	//   events: {
	//     'click a.article-link' : 'displayModal'
	//   },
	//
	unescapeHtml: function(safe) {
	    return safe.replace(/&amp;/g, '&')
	        .replace(/&lt;/g, '<')
	        .replace(/&gt;/g, '>')
	        .replace(/&quot;/g, '"')
	        .replace(/&#039;/g, "'");
	},
	//
	//   displayModal: function(event) {
	//     event.preventDefault;
	//     var modal = new Feeder.Views.ArticleModal({ model: this.model, articleView: this });
	//     $(document).find("div.article-modal").html(modal.render().$el);
	//     $(document).find("div.article-modal-content").toggleClass("article-modal-content-on");
	//     $(document).find("div.article-modal-background").toggleClass("article-modal-background-on");
	//     $(document).find("div.article-modal").toggleClass("article-modal-on");
	//
	//     $(document).find(".scroll-pane").jScrollPane({ showArrows: true });
	//     $(document).find(".scroll-pane").removeAttr("style");
	//     $(document).find(".jspContainer").removeAttr("style");
	//     $(document).find(".jspPane").removeAttr("style");
	//
	// 	window.pane_api = $(document).find(".scroll-pane").data('jsp');
	//   }
});