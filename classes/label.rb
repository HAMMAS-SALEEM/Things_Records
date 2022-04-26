class Label
  def initialize(title, color)
    @id = Random.rand(1..999_999)
    @title = title
    @color = color
    @items = []
  end
end
