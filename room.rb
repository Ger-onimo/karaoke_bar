
class Room

attr_reader :name, :guest

  def initialize(name)
    @name = name
    @guest = []
  end

  def guests_in_room()
    return @guest.length()
  end

  def check_in_guest(guest)
  @guest.push(guest)
  end




  # def song_list()
  #end

end
