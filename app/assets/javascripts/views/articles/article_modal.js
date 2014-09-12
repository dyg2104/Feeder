Feeder.Views.ArticleModal = Backbone.View.extend({
	template: JST['articles/modal'],

  initialize: function(options){
    this.articleView = options.articleView;
    this.subView;
  },

	render: function() {
    var facebook_link = "https://www.facebook.com/sharer/sharer.php?u=" +
                        encodeURI(this.model.get("guid"));

    var twitter_link = "https://twitter.com/intent/tweet?url=" +
                        encodeURIComponent(this.model.get("guid")) + "&text=" +
                        encodeURIComponent(this.model.get("title"));

    var content = this.template({
      article: this.model,
      fb_link: facebook_link,
      twitter_link: twitter_link,
      unescapeHtml: this.unescapeHtml
    });

		this.$el.html(content);
	  this.subView = new Feeder.Views.CommentIndex({ collection: this.model.comments(), article: this.model });
	  this.$el.find('.comments-pane').append(this.subView.render().$el);

		return this;
	},

  events: {
    'click .article-modal-toolbar > button' : 'saveArticle',
    'submit form.modal-comment-form': 'createComment',
    'click #article-modal-close > button' : 'removeModal',
    'click div.article-modal-background' : 'removeModal'
  },

	unescapeHtml: function(safe) {
	    return safe.replace(/&amp;/g, '&')
	        .replace(/&lt;/g, '<')
	        .replace(/&gt;/g, '>')
	        .replace(/&quot;/g, '"')
	        .replace(/&#039;/g, "'");
	},

  saveArticle: function() {
		var that = this;

    $.ajax({
      url: "saved_for_laters",
      type: "POST",
      data: {
        saved_for_later: {article_id: that.model.id}
      },
      success: function() {
        Feeder.user_saved_articles.add(that.model);
			}
		});
  },

  createComment: function(event) {
    event.preventDefault();

    var params = $(event.currentTarget).serializeJSON();
    var comment = new Feeder.Models.Comment(params["comment"]);

    var that = this;

    comment.save({}, {
      success: function() {
        that.subView.collection.add(comment);
				that.subView.collection.fetch({
					data: { comment: { article_id: that.model.id } },
					processData: true
				});

				that.$el.find(".modal-comment-form").trigger("reset");
      }
    });
  },

  removeModal: function(event) {
		event.preventDefault();

    $(document).find("div.article-modal-content").toggleClass("article-modal-content-on");
    $(document).find("div.article-modal-background").toggleClass("article-modal-background-on");
    $(document).find("div.article-modal").toggleClass("article-modal-on");

		var that = this;

    if (Feeder.user_status) {
      $.ajax({
        url: ("/read_articles/" + that.model.id),
        type: "PATCH",
        success: function(response) {
          hash = window.location.hash;

          if(window.location.pathname === "/" &&
             hash === "" && response.success) {
               that.articleView.remove();
          } else if(hash.substring(0, 17) === "#user/categories/") {
            that.articleView.remove();
          } else if(hash.substring(0, 12) === "#user/feeds/") {
            that.articleView.remove();
          }

					that.subView.remove();
			    that.remove();
        }
      });

    } else {

			that.subView.remove();
	    that.remove();
    }

  }

});