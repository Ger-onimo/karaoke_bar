require('pry')

class Room

attr_reader :name, :guest, :song

  def initialize(name)
    @name = name
    @guest = []
    @song = []
  end

  def guests_number()
    return @guest.length()
  end

  def check_in_guest(guest)
    @guest.push(guest)
  end

  def song_list_length()
    return @song.length()
  end

  def song_list(song)
    @song.push(song)
  end

end
