require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state, publish_date)
    @publisher = publisher
    @cover_state = cover_state
    super(publish_date)
  end

  private

  def can_be_archived?
    true if @publish_date - Time.new.year > 10 || @cover_state == 'bad'
  end
end
