class Item
  attr_accessor :publish_date, :genre, :author, :source
  attr_reader :label, :archived

  def initialize(publish_date)
    @id = Random.rand(1..1000)
    @publish_date = publish_date
  end

  def move_to_archived
    @archived = true if can_be_archived?
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  private

  def can_be_archived?
    return true if Time.new.year - publish_date > 10
  end
end
