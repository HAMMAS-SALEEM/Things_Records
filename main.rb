require './app_functionality/app_game'
require './app_functionality/app_author'
require './app_functionality/app_book'
require './app_functionality/app_label'
require './app_functionality/app_music_album'
require './app_functionality/app_genre'

class Main
  include AppGame
  include AppAuthor
  include AppBook
  include AppLabel
  include AppMusicAlbum
  include AppGenre

  def start
    puts " Welcome the Things Records App
    1  - List all books
    2  - List all music albums
    3  - List of games
    4  - List all genres (e.g 'Comedy', 'Thriller')
    5  - List all labels (e.g. 'Gift', 'New')
    6  - List all authors (e.g. 'Stephen King')
    7  - Add a book
    8  - Add a music album
    9  - Add a game
    10 - Add an author
    11 - Quit the App
    "
  end

  def select(num)
    case num
    when 1
      list_all_books
    when 2
      list_all_music_albums
    when 3
      list_all_games
    when 4
      list_all_genres
    when 5
      list_all_labels
    when 6
      list_all_author
    when 7
      add_book
    when 8
      add_music_album
    when 9
      add_game
    when 10
      add_author
    when 11
      exit
    end
  end
end

loop do
  app = Main.new
  app.start
  x = gets.chomp.to_i
  app.select(x)
end
