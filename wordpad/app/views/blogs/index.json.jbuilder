json.array!(@blogs) do |blog|
  json.extract! blog, :id, :content, :language_id, :user_id, :status, :title
  json.url blog_url(blog, format: :json)
end
