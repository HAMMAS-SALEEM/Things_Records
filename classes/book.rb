require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state, publish_date)
    @publisher = publisher
    @cover_state = cover_state
    super(publish_date)
  end

  attr_accessor :publisher, :cover_state

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end
