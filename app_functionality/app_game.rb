require './classes/game'
require_relative 'app_input'
require './store_data/preserve_data'
module AppGame
  include Input
  include PreserveData

  def list_all_games
    games = load_data('games')
    puts('No Games Avalibale') if games.empty?
    games.each_with_index do |game, index|
      puts(
        "#{index + 1}) Multiplayer: #{game['multiplayer']} last played at #{game['last_played_at']}"
      )
    end
  end

  def add_game
    input = inp(['multiplayer', "last played at (e.g.'2022-02-27')", "publish  date (e.g.'2022-02-27')"])
    game = Game.new(input[0], input[1], input[2])
    game_obj = { multiplayer: game.multiplayer, last_played_at: game.last_played_at, publish_date: game.publish_date }
    update_data('games', game_obj)
    puts('Game created Successfully')
  end
end
