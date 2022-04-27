require_relative 'item'
class MusicAlbum < Item
  attr_accessor :name, :on_spotify, :archived, :publish_date

  def initialize(publish_date, archived, name, on_spotify, genre)
    super(id, publish_date, archived, genre)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    archived && @on_spotify
  end
end
