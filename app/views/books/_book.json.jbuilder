json.extract! book, :id, :name, :picture, :intro, :pathw, :pathl, :created_at, :updated_at
json.url book_url(book, format: :json)