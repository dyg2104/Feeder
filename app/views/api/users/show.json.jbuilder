json.id @user.id
json.username @user.username

json.categories @categories do |category|
  json.id category.id
	json.title category.title
	json.image_url category.image_url
end

json.feeds @feeds do |feed|
  json.id feed.id
  json.title feed.title
  json.url feed.url
	json.image_url feed.image_url
  json.category_id feed.category_id
end

json.articles @articles do |article|
  json.id article.id
  json.title article.title
  json.author article.author
  json.guid article.guid
  json.link article.link
	json.image_url article.image_url
  json.description article.description
  json.published_at article.published_at
  json.feed_id article.feed_id
	json.feed_title article.feed_title
  json.category_id article.category_id
  json.comments article.comments do |comment|
    json.article_id comment.article_id
    json.user_id comment.user_id
    json.body comment.body
  end
end
