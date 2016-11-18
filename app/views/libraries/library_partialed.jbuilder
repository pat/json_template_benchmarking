json.array! library.books do |book|
  json.partial! 'books/book', :book => book
end
