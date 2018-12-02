
class Guest

  attr_reader :name, :money

  def initialize(name, money)
    @name = name     ##MVP
    @money = money ##ext 1
    # @fave_song = fave_song ##ext 2

  end

end
