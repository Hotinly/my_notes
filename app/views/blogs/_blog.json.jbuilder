json.extract! blog, :id, :title, :pathw, :pathl, :category, :secnario, :note, :level, :tested, :referto, :created_at, :updated_at
json.url blog_url(blog, format: :json)