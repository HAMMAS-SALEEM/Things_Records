require './classes/book'
require_relative 'app_input'
require './store_data/preserve_data'

module AppBook
  include Input
  include PreserveData

  def list_all_books
    books = load_data('book')
    puts('No Books Avalibale') if books.empty?
    books.each_with_index do |book, index|
      puts(
        "#{index + 1}) Publisher: #{book['publisher']},
        Cover_state: #{book['cover_state']}, Publish_date: #{book['publish_date']}"
      )
    end
  end

  def add_book
    input = inp(%w[Publisher Cover-State Publish-Date])
    book = Book.new(input[0], input[1], input[2])
    book_obj = { publisher: book.publisher, cover_state: book.cover_state, publish_date: book.publish_date }
    update_data('book', book_obj)
    add_label
    puts('Book created Successfully')
  end
end
