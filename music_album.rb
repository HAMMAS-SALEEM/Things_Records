require_relative './item'
class MusicAlbum < item
  attr_accessor :name, :on_spotify, :archived

  def initialize(genre, name, archived, publish_date, on_spotify)
    super(id, genre, name, archived, publish_date)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    archived && @on_spotify
  end
end
