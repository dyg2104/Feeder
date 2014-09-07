Feeder.Collections.Users = Backbone.Collection.extend({
	model: Feeder.Models.User,
	
	getOrFetch: function(id) {
		var users = this;
		var user;
		
		if(user = users.get(id)) {
			user.fetch();
		} else {
			user = new Feeder.Models.User({ id: id});
			user.fetch({
				success: function () {
					users.add(user);
				}
			});
		}
		
		return user;
	}
});