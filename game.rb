require_relative './item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at

  def initialize(multiplayer, last_played_at, publish_date)
    @multiplayer = multiplayer
    @last_played_at = Date._parse(last_played_at)
    super(publish_date)
  end

  private

  def can_be_archived?
    return true if Time.new.year - @last_played_at[:year] > 2 && Time.new.year - publish_date[:yare] > 10
  end
end
