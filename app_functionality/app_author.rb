require './store_data/preserve_data'
require './classes/author'

module AppAuthor
  include PreserveData
  def list_all_author
    authors = load_data('author')
    puts('No Authors Avalibale') if authors.empty?
    authors.each_with_index do |author, index|
      puts("#{index + 1}) #{author['first_name']} #{author['last_name']}")
    end
  end

  def add_author
    input = inp(['First Name', 'Last Name'])
    author = Author.new(input[0], input[1])
    author_obj = { first_name: author.first_name, last_name: author.last_name }
    update_data('author', author_obj)
    puts('Author created Successfully')
  end
end
