require_relative 'spec_helper'

describe Item do
  before :each do
    @item = Item.new('2010-02-01')
  end

  it 'book should be an instance of Item Class' do
    expect(@item).to be_instance_of Item
  end

  context 'Testing instance variable of Item Class' do
    it 'should return publish date variable' do
      publish_date = @item.publish_date.year
      expect(publish_date).to eq 2010
    end
    it 'should return archived variable' do
      archived = @item.archived
      expect(archived).to eq false
    end
  end
  context 'Testing methods of Item Class' do
    it 'should return archive true' do
      archive = @item.move_to_archived
      expect(archive).to eq true
    end
  end
  context 'Testing Custom Setters of Item Class' do
    it 'should return the label variable' do
      @item.label = Label.new('Gift', 'Blue')
      label_title = @item.label.title
      expect(label_title).to eq 'Gift'
    end
    it 'should return the author variable' do
      @item.author = Author.new('Hammas', 'Saleem')
      author_first_name = @item.author.first_name
      expect(author_first_name).to eq 'Hammas'
    end
  end
end
