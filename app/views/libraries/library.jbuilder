json.array! library.books do |book|
  json.(book, :title, :author, :genre)
end
