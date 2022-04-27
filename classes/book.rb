require_relative 'item'

class Book < Item
  def initialize(publisher, cover_state)
    @publisher = publisher
    @cover_state = cover_state
    super()
  end

  private

  def can_be_archived?
    return true if publish_date - Time.new.year > 10
    return true if @cover_state == 'bad'
  end
end
