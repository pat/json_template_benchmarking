class BookOatSerializer < Oat::Serializer
  adapter SimpleOatAdapter

  schema do
    map_properties :title, :author, :genre
  end
end
