Feeder.Views.ArticleModal = Backbone.View.extend({
	template: JST['articles/modal'],

  initialize: function(options){
    this.articleView = options.articleView;
    this.subView;
  },

	render: function() {
		var content = this.template({ article: this.model, unescapeHtml: this.unescapeHtml });
		
		this.$el.html(content);
	  this.subView = new Feeder.Views.CommentIndex({ collection: this.model.comments(), article: this.model });
	  this.$el.find('.comments-pane').append(this.subView.render().$el);

	  var d = document;
	  var s = "script";
	  var id = "twitter-wjs";

	  var js, fjs = d.getElementsByTagName(s)[0];
	  if(!d.getElementById(id)) {
	    js = d.createElement(s);
	    js.id = id;
	    js.src = "https://platform.twitter.com/widgets.js";
	    fjs.parentNode.insertBefore(js,fjs);
	  }

    id = "facebook-jssdk";
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s);
    js.id = id;
    js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
    fjs.parentNode.insertBefore(js, fjs);
		
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
				//
		// $(document).find("#rufous-sandbox").remove();
		// $(document).find("#fb-root").remove();
		// $(document).find("body").removeAttr("data-twttr-rendered");
		
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