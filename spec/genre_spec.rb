require './classes/genre'
require './classes/item'

describe Genre do
  context 'it should create a genre instance with name' do
    genre = Genre.new('urban')
    item = Item.new(10, '2021-06-10', false, 'Hiphop')

    it 'create new instance of class genre' do
      expect(genre).to be_an_instance_of Genre
    end

    it 'should have genre name urban' do
      expect(genre.name).to eql 'urban'
    end

    it 'add a new item' do
      genre.add_item(item)
      expect(genre.items.length).to eq 1
    end
  end
end
