json.array! @savedArticles do |article|
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
    json.user_id comment.user_id
    json.username comment.user.username
    json.article_id comment.article_id
    json.body comment.body
    json.created_at comment.created_at
  end
end