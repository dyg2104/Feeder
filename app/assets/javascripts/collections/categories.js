Feeder.Collections.Categories = Backbone.Collection.extend({
	model: Feeder.Models.Category,
	
	url: 'api/categories',
	
	getOrFetch: function(id) {
		var categories = this;
		var category;
		
		if(category = categories.get(id)) {
			category.fetch();
		} else {
			category = new Feeder.Models.Category({ id: id});
			category.fetch({
				success: function () {
					categories.add(category);
				}
			});
		}
		
		return category;
	}
});