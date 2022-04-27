require_relative '../classes/game'

describe Game do
  context 'It should create game' do
    game = Game.new('yes', '2000-06-16', '2000-02-27')
    it 'creates a new game with the given parameters' do
      expect(game).to be_an_instance_of Game
    end
    it 'Return correct multiplayer' do
      expect(game.multiplayer).to eq 'yes'
    end
    it 'Return correct last_played_at' do
      x = { mday: 16, mon: 6, year: 2000 }
      y = game.last_played_at
      expect(y).to eq x
    end
  end
end
