class LibraryOatSerializer < Oat::Serializer
  adapter SimpleOatAdapter

  schema do
    entities :books, item.books, BookOatSerializer
  end
end
