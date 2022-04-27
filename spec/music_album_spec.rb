require './classes/music_album'

describe MusicAlbum do
  before :all do
    @album = MusicAlbum.new('2007-04-10', false, 'unbreakable', false, 'pop')
  end

  context 'it should create a MusicAlbum class instance' do
    it 'should be the instance of music_albam class' do
      expect(@album).to be_an_instance_of MusicAlbum
    end

    it 'should check if the publish date is 2007-04-10' do
      expect(@album.publish_date).to eql '2007-04-10'
    end

    it 'should check if the name is unbreakable' do
      expect(@album.name).to eql 'unbreakable'
    end

    it 'should check if album is on spotify' do
      expect(@album.on_spotify).to be false
    end

    it 'should check if album genre is pop' do
      expect(@album.genre).to eql 'pop'
    end
  end
end
