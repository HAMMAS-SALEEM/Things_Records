class Item
  attr_accessor :publish_date, :genre, :author, :source, :label, :genre, :archived
  attr_reader :id

  def initialize(_id, publish_date, archived, genre)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
    @genre = genre
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if Time.new.year - published_date > 10
  end
end
