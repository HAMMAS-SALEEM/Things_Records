require_relative 'item'
class MusicAlbum < Item
  attr_accessor :name, :on_spotify, :archived, :publish_date

  def initialize(publish_date, name, on_spotify, genre)
    super(publish_date)
    @name = name
    @on_spotify = on_spotify
    @genre = genre
  end

  def can_be_archived?
    archived && @on_spotify
  end
end
