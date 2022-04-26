class MusicAlbum
  attr_accessor :name, :on_spotify, :archived

  def initialize(genre, name, archived, publish_date, on_spotify)
    super(id: id, genre, name, archived, publish_date: publish_date)
    @name = name
    @on_spotify = on_spotify
  end
 
  def can_be_archived?
    archived && @on_spotify
  end

  def add_a_music_album
  end

  def list_all_music_albums
  end

end