require './app_functionality/app_game'
require './app_functionality/app_author'
class Main
  include AppGame
  include AppAuthor
  def start
    puts " Welcome the Things Records App
    1  - List all books
    2  - List all music albums
    3  - List of games
    4  - List all genres (e.g 'Comedy', 'Thriller')
    5  - List all labels (e.g. 'Gift', 'New')
    6  - List all authors (e.g. 'Stephen King')
    7  - List all sources (e.g. 'From a friend', 'Online shop')
    8  - Add a book
    9  - Add a music album
    10 - Add a game
    11 - Add an author
    12 - Quit the App
    "
  end

  def select(num)
    case num
    when 3
      list_all_games
    when 6
      list_all_author
    when 10
      add_game
    when 11
      add_author
    when 12
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
