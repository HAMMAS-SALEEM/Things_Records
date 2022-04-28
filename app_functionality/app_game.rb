require_relative '../store_data/game_store'
require_relative 'app_input'
module AppGame
  include GameStore
  include Input

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
    input = inp(['multiplayer', "last played at (e.g.'2022-02-27')", "publish  date (e.g.'2022-02-27')"])
    write_game(input[0], input[1], input[2])
    puts('Game created Successfully')
  end
end
