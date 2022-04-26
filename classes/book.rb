class Book < Item
  def initialize(publisher, cover_state, label, archived)
    @publisher = publisher
    @cover_state = cover_state
    super(publisher, label, archived)
  end
end
