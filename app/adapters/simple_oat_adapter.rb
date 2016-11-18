class SimpleOatAdapter < Oat::Adapter
  def properties(&block)
    data.merge! yield_props(&block)
  end

  def property(key, value)
    data[key] = value
  end

  def entity(name, obj, serializer_class = nil, context_options = {}, &block)
    serializer = serializer_from_block_or_class(obj, serializer_class, context_options, &block)

    data[name] << serializer.to_hash if serializer
  end

  def entities(name, collection, serializer_class = nil, context_options = {}, &block)
    data[name] = []

    collection.each do |obj|
      entity name, obj, serializer_class, context_options, &block
    end
  end
end
