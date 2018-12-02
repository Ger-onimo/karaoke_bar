require('pry')

class Room

attr_reader :name, :guest_list, :song_list, :capacity

  def initialize(name, capacity)
    @name = name  #MVP
    @capacity = capacity ## ext 1
    #@guest_spend = guest_spend ##ext 2 (entry fee/drinks etc)
    @guest_list = []   #MVP
    @song_list = []    #MVP

  end

  def guests_number()
    return @guest_list.length()
  end

  def guest_check_in(guest)
    @guest_list.push(guest)
  end

  def guest_check_out(guest)
    guest_name = @guest_list.find_index(guest)
    # create var for arg for guest parameter
    # find index for the arg in guest array
    @guest_list.delete_at(guest_name)
    # delete the guest name at the index
  end

  def song_list_length()
    return @song_list.length()
  end

  def song_list(song)
    @song_list.push(song)
  end


  def room_capacity_exceeded(guest_list)
    if @guest_list.length() >= capacity
      return true
    end
  end
# if length of the guest_list is greater
# than capacity return true
end

  #def take_fee_from_customer
  #get the entry fee
  #end
