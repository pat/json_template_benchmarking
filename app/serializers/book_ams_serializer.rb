class BookAmsSerializer < ActiveModel::Serializer
  attributes :title, :author, :genre
end
