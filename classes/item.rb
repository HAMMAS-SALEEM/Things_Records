class Item
  def initialize(publish_date, label, archived)
    @id = Random.rand(1..9_999_999)
    @publish_date = publish_date
    @label = label
    @archived = archived
  end

  attr_accessor :publish_date, :label
end
