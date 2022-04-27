require_relative './classes/preserve_data'
require './classes/app'

class Main
  include ProcessData
  def initialize
    @music_albums = load_music
    @genres = load_genre
  end

  def start
    puts 'Welcome the Things Records App'
    input = 0
    until input == 11
      puts "Choose from the following Options
      1  - List all books
      2  - List all music albums
      3  - List all games
      4  - List all genres (e.g 'Comedy', 'Thriller')
      5  - List all labels (e.g. 'Gift', 'New')
      6  - List all authors (e.g. 'Stephen King')
      7  - List all sources (e.g. 'From a friend', 'Online shop')
      8  - Add a book
      9  - Add a music album
      10 - Add a game
      11 - Quit the App
      "
      print 'Enter a number: '
      input = gets.chomp.to_i
      user_input input
    end
  end

  # rubocop:disable Metrics/MethodLength
  def user_input(input)
    case input
    when 1
      App.list_all_book
    when 2
      App.new.list_all_music_albums(@music_albums)
    when 3
      App.list_all_games
    when 4
      App.new.list_all_genres(@genres)
    when 5
      App.list_all_labels
    when 6
      App.list_all_authors
    when 7
      App.list_all_sources
    when 8
      App.add_a_book
    when 9
      p 'You chose to add album'
      App.new.add_a_music_album(@music_albums, @genres)
    when 10
      App.add_a_game
    when 11
      exit
    else
      puts 'Enter numbers between 1 and 11'
      puts
    end
  end
end

Main.new.start
