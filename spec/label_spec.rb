require_relative 'spec_helper'

describe Label do
  before :each do
    @label = Label.new('Book', 'Red')
  end

  it 'label should be an instance of Label Class' do
    expect(@label).to be_instance_of Label
  end

  context 'Testing instance variable of Label Class' do
    it 'should return publisher variable' do
      title = @label.title
      expect(title).to eq 'Book'
    end
    it 'should return publisher variable' do
      color = @label.color
      expect(color).to eq 'Red'
    end
    it 'should return publisher variable' do
      items = @label.items
      expect(items).to eq []
    end
  end
  context 'Testing methods of Label Class' do
    it 'should return 1 item' do
      item = Item.new('2022-01-04')
      @label.add_item(item)
      total_items = @label.items.length
      expect(total_items).to eq 1
    end
  end
end
