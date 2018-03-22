namespace :benchmarks do
  task :single_object => :environment do
    book = Book.new(
      :title  => 'The Hate Race',
      :author => 'Maxine Beneba Clarke',
      :genre  => 'Memoirs'
    )

    Benchmark.ips do |bench|
      bench.report 'jbuilder' do
        Jbuilder.encode { |json| json.(book, :title, :author, :genre) }
      end

      bench.report 'ams' do
        BookAmsSerializer.new(book).to_json
      end

      bench.report 'roar' do
        BookRoarSerializer.new(book).to_json
      end

      bench.report 'oat' do
        BookOatSerializer.new(book).to_json
      end

      bench.compare!
    end
  end

  task :single_object_rendered => :environment do
    book = Book.new(
      :title  => 'The Hate Race',
      :author => 'Maxine Beneba Clarke',
      :genre  => 'Memoirs'
    )
    renderer = Renderer.new

    Benchmark.ips do |bench|
      bench.report 'jbuilder' do
        renderer.render '/books/book.jbuilder',
          :layout => false,
          :locals => {:book => book}
      end

      bench.report 'jbuilder_partial' do
        renderer.render '/books/book_partialed.jbuilder',
          :layout => false,
          :locals => {:book => book}
      end

      bench.report 'ams' do
        renderer.render :plain => BookAmsSerializer.new(book).to_json
      end

      bench.report 'roar' do
        renderer.render :plain => BookRoarSerializer.new(book).to_json
      end

      bench.report 'oat' do
        renderer.render :plain => BookOatSerializer.new(book).to_json
      end

      bench.compare!
    end
  end

  task :many_objects => :environment do
    book = Book.new(
      :title  => 'The Hate Race',
      :author => 'Maxine Beneba Clarke',
      :genre  => 'Memoirs'
    )
    library = Library.new :books => Array.new(20, book)

    Benchmark.ips do |bench|
      bench.report 'jbuilder' do
        Jbuilder.encode { |json|
          json.array! library.books do |book|
            json.(book, :title, :author, :genre)
          end
        }
      end

      bench.report 'ams' do
        LibraryAmsSerializer.new(library).to_json
      end

      bench.report 'roar' do
        LibraryRoarSerializer.new(library).to_json
      end

      bench.report 'oat' do
        LibraryOatSerializer.new(library).to_json
      end

      bench.compare!
    end
  end

  task :many_objects_rendered => :environment do
    book = Book.new(
      :title  => 'The Hate Race',
      :author => 'Maxine Beneba Clarke',
      :genre  => 'Memoirs'
    )
    library = Library.new :books => Array.new(20, book)
    renderer = Renderer.new

    Benchmark.ips do |bench|
      bench.report 'jbuilder' do
        renderer.render '/libraries/library.jbuilder',
          :layout => false,
          :locals => {:library => library}
      end

      bench.report 'jbuilder_partial' do
        renderer.render '/libraries/library_partialed.jbuilder',
          :layout => false,
          :locals => {:library => library}
      end

      bench.report 'ams' do
        renderer.render :plain => LibraryAmsSerializer.new(library).to_json
      end

      bench.report 'roar' do
        renderer.render :plain => LibraryRoarSerializer.new(library).to_json
      end

      bench.report 'oat' do
        renderer.render :plain => LibraryOatSerializer.new(library).to_json
      end

      bench.compare!
    end
  end

  task :all => [
    :single_object,
    :single_object_rendered,
    :many_objects,
    :many_objects_rendered
  ]

  def append_to_output(text)
    File.write 'OUTPUT.markdown', text, File.size('OUTPUT.markdown')
  end

  task :write do
    File.delete 'OUTPUT.markdown' if File.exist?('OUTPUT.markdown')
    `touch OUTPUT.markdown`

    append_to_output <<-TEXT
## Single object

\`\`\`
    TEXT

    `rake benchmarks:single_object >> OUTPUT.markdown`

    append_to_output <<-TEXT
\`\`\`

## Single object rendered via Rails

\`\`\`
    TEXT

    `rake benchmarks:single_object_rendered >> OUTPUT.markdown`

    append_to_output <<-TEXT
\`\`\`

## Many objects

\`\`\`
    TEXT

    `rake benchmarks:many_objects >> OUTPUT.markdown`

    append_to_output <<-TEXT
\`\`\`

## Many objects rendered via Rails

\`\`\`
    TEXT

    `rake benchmarks:many_objects_rendered >> OUTPUT.markdown`

    append_to_output <<-TEXT
\`\`\`
    TEXT
  end
end
