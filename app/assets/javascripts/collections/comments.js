Feeder.Collections.Comments = Backbone.Collection.extend({
	url: '/api/comments',
	model: Feeder.Models.Comment
});