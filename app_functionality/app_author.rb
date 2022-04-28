require_relative '../store_data/author_store'
module AppAuthor
  include AuthorStore
  def list_all_author
    authors = load_author
    puts('No Authors Avalibale') if authors.empty?
    authors.each_with_index do |author, index|
      puts("#{index + 1}) #{author['first_name']} #{author['last_name']}")
    end
  end

  def add_author
    input = inp(['First Name', 'Last Name'])
    write_author(input[0], input[1])
    puts('Author created Successfully')
  end
end
