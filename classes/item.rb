class Item
  attr_accessor :publish_date, :genre, :source, :label
  attr_reader :author

  def initialize(publish_date, archived: false)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
    @archived = archived
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def move_to_archivd
    @archived = true if can_be_archived?
  end

  private

  def can_be_archived?
    true if Time.new.year - @published_date.year > 10
  end
end
