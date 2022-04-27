require_relative '../classes/game'
require_relative '../store_data/game_store'
module AppGame
  include GameStore

  def list_all_games
    games = load_game
    puts('No Games Avalibale') if games.empty?
    games.each_with_index do |game, index|
      puts(
        "#{index + 1}) Multiplayer: #{game['multiplayer']} last played at #{game['last_played_at']}"
      )
    end
  end

  def add_game
    print('Multiplayer: ')
    multiplayer = gets.chomp
    print("last played at (e.g.'2022-02-27'): ")
    last = gets.chomp
    print("publish  date (e.g.'2022-02-27') : ")
    date = gets.chomp
    write_game(multiplayer, last, date)
    puts('Game created Successfully')
  end
end
