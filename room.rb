require('pry')

class Room

attr_reader :name, :guest, :song, :capacity

  def initialize(name, capacity)
    @name = name  #MVP
    @capacity = capacity ## ext 1
    #@guest_spend = guest_spend ##ext 2 (entry fee/drinks etc)
    @guest = []   #MVP
    @song = []    #MVP

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

  # def room_capacity_exceeded(guest_list)
  #   if guest_list >= @guest.guests_number()            #guests_number is greater
  #     return true                                #than or equal to capacity
  #   end
  # end

  end
