require 'roar/json'
require 'roar/decorator'

class LibraryRoarSerializer < Roar::Decorator
  include Roar::JSON

  collection :books, class: Book do
    property :title
    property :author
    property :genre
  end
end
