require_relative '../game'

describe Game do
  context 'It should create game' do
    game = Game.new('yes', '2000-06-16', '2000-02-27')
    it 'creates a new game with the given parameters' do
      expect(game).to be_an_instance_of Game
    end
  end
end
