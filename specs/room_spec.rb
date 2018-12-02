require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @room1 = Room.new("1", 3)
    @room2 = Room.new("2", 6)

    @guest1 = Guest.new("Charlie", 50)
    @guest2 = Guest.new("Sam", 100)
    @guest3 = Guest.new("Alison", 150)
    @guest4 = Guest.new("Ross", 70)

    # guest_list = [@guest1, @guest2, @guest3, @guest4]

  end

  def test_room_has_a_name
    assert_equal("1", @room1.name)
  end
# passed test

  def test_check_for_guests_checked_into_room
    assert_equal(0, @room1.guests_number())
  end
# checking length of guests in the room
# passed test

  def test_guests_checked_into_room
    # guest = Guest.new("Charlie", 50)
    @room1.guest_check_in(@guest1)
    assert_equal(1, @room1.guests_number())
  end
# check guest in and test length of guests in the room
# to make sure guest has been added to guest array
# passed test

  def test_check_in_two_guests
    # guest1 = Guest.new("Charlie", 50)
    # guest2 = Guest.new("Sam", 100)
    @room1.guest_check_in(@guest1)
    @room1.guest_check_in(@guest2)
    assert_equal(2, @room1.guests_number())
  end
# check in two guests as above
# passed test

  def test_guests_checked_out_of_room
    @room1.guest_check_in(@guest1)
    @room1.guest_check_in(@guest2)
    @room1.guest_check_out(@guest2)
    assert_equal(1, @room1.guests_number())
  end
# check guest out and test length of guests in the room
# to make sure guest has been removed from guest array
# passed test

  def test_check_for_songs_added_to_list
    song = Song.new({title: "Dancing Queen"})
    assert_equal(0, @room1.song_list_length())
  end
# checking length of song list for the room
# passed

  def test_add_song_to_song_list
    song1 = Song.new({title: "Dancing Queen"})
    @room1.song_list(song1)
    assert_equal(1, @room1.song_list_length())
  end
# adding song to song list and test length of song list for the room
# to make sure song has been added to song array
# passed test

  def test_add_two_song_to_song_list
    song1 = Song.new({title: "Dancing Queen"})
    song2 = Song.new({title: "Parklife"})
    @room1.song_list(song1)
    @room1.song_list(song2)
    assert_equal(2, @room1.song_list_length())
  end
# adding two songs to song list as above
# passed

  def test_capacity_of_room
    assert_equal(3, @room1.capacity)
  end

#   def test_if_capacity_of_room_exceeded
#   #   # capacity_exceeded =
#   guest_list = @Guest.new[{name: "Charlie", money: 50}, {name: "Sam", money: 100}]
#
# p "this is the guest list" + guest_list.inspect
#   assert_equal(true, @room1.room_capacity_exceeded(guest_list))
#   # # actual result will be the room_capacity_exceeded method
#   # #returning true or false
#   end

end
