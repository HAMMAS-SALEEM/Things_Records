class Label
  def initialize(title, color)
    @id = Random.rand(1..999_999)
    @title = title
    @color = color
    @items = []
  end

  attr_reader :items

  def add_item(item)
    @items.push(item)
    item.label = self
  end
end
