json.id @category.id
json.title @category.title
json.image_url @category.image_url
json.feeds @category.feeds do |feed|
  json.id feed.id
  json.title feed.title
  json.url feed.url
	json.image_url feed.image_url
  json.category_id feed.category_id
end