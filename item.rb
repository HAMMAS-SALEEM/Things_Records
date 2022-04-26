class Item
  attr_accessor :publish_date
  attr_reader :genre, :author, :source, :label

  def initialize(_id, publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
  end

  def author=(author)
    @author = author
  end

  def source=(source)
    @source = source
  end

  def label=(label)
    @label = label
  end

  def move_to_archivd
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    return true if Time.new.year - published_date > 10
  end
end
