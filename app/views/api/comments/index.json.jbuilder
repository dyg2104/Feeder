json.array! @comments do |comment|
  json.user_id comment.user_id
  json.username comment.user.username
  json.article_id comment.article_id
  json.body comment.body
  json.created_at comment.created_at
end