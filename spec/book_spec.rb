require_relative 'spec_helper'

describe Book do
  before :each do
    @book = Book.new('Hammas', 'bad', '2015-02-01')
  end

  it 'book should be an instance of Book Class' do
    expect(@book).to be_instance_of Book
  end

  context 'Testing instance variable of Book Class' do
    it 'should return publisher variable' do
      name = @book.publisher
      expect(name).to eq 'Hammas'
    end
    it 'should return publisher variable' do
      cover_state = @book.cover_state
      expect(cover_state).to eq 'bad'
    end
    it 'should return publisher variable' do
      publish_date = @book.publish_date.year
      expect(publish_date).to eq 2015
    end
  end
  context 'Testing methods of Book Class' do
    it 'should return archive true' do
      archive = @book.move_to_archived
      expect(archive).to eq true
    end
  end
end
