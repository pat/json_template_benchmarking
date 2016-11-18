require 'roar/json'
require 'roar/decorator'

class BookRoarSerializer < Roar::Decorator
  include Roar::JSON

  property :title
  property :author
  property :genre
end
