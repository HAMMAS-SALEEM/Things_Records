class Genre
  attr_accessor :id, :name, :items

  def initialize(name)
    @id = id || Random.rand(1..9999)
    @name = name
    @items = []
  end

  def add_item(item)
    @items << item
    item.genre = self
  end
end
