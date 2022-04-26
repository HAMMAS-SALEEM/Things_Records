require_relative '../author'
require_relative '../item'
describe Author do
  context 'It should create author and add to items' do
    author = Author.new('Farouq', 'Daif')
    item = Item.new('2000-02-27')
    it 'Creates a new author with the given parameters' do
      expect(author).to be_an_instance_of Author
    end
    it 'Should add item to the author' do
      author.add_item(item)
      expect(author.items.length).to eq 1
    end
    it 'Should return array of items' do
      expect(author.items.class).to eq Array
    end
    it 'Return correct first name' do
      expect(author.first_name).to eq 'Farouq'
    end
    it 'Return correct last name' do
      expect(author.last_name).to eq 'Daif'
    end
  end
end
