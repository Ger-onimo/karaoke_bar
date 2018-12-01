require('pry')

class Room

attr_reader :name, :guest, :song
attr_writer :guest

  def initialize(name)
    @name = name
    @guest = []
    @song = []
  end

  def guests_number()
    return @guest.length()
  end

  def guest_check_in(guest)
    @guest.push(guest)
  end

  def guest_check_out(guest)
    guest_name = @guest.find_index(guest)
    # create var for arg for guest parameter
    # find index for the arg in guest array
    @guest.delete_at(guest_name)
    # delete the guest name at the index
  end

  def song_list_length()
    return @song.length()
  end

  def song_list(song)
    @song.push(song)
  end

end
