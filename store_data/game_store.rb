require 'json'
require_relative '../classes/game'
module GameStore
  def write_game(multiplayer, last, date)
    data = []
    game = Game.new(multiplayer, last, date)
    data.push(game)
    json = if File.exist?('./data/games.json')
             load_game.push({ multiplayer: multiplayer, last_played_at: last, publish_date: date })
           else
             data.map do |one_game|
               { multiplayer: one_game.multiplayer, last_played_at: one_game.last_played_at,
                 publish_date: one_game.publish_date }
             end
           end
    File.write('./data/games.json', json.to_json)
  end

  def load_game
    if File.exist?('./data/games.json')
      JSON.parse(File.read('./data/games.json'))
    else
      []
    end
  end
end
