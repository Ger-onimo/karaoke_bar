require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("1")
    # the room number is a string as it is only an identifier for the room,
    # so not used for calculations
    # @guest1 = Guest.new("Charlie")
    # @guest2 = Guest.new("Sam")

    # @song1 = Song.new({title: "Dancing Queen", artist: "ABBA"})
    # @song2 = Song.new({title: "Park Life", artist: "Blur"})

  end

  def test_room_has_a_name
    assert_equal("1", @room.name)
  end
# passed test

  def test_check_for_guests_checked_into_room
    guest = Guest.new("Charlie")
    assert_equal(0, @room.guests_number())
  end
# checking length of guests in the room
# passed test

  def test_guests_checked_into_room
    guest = Guest.new("Charlie")
    @room.guest_check_in(guest)
    assert_equal(1, @room.guests_number())
  end
# check guest in and test length of guests in the room
# to make sure guest has been added to guest array
# passed test

  def test_check_in_two_guests
    guest1 = Guest.new("Charlie")
    guest2 = Guest.new("Sam")
    @room.guest_check_in(guest1)
    @room.guest_check_in(guest2)
    assert_equal(2, @room.guests_number())
  end
# check in two guests as above
# passed test

  def test_guests_checked_out_of_room
    @room.guest_check_in("Charlie")
    @room.guest_check_in("Sam")
    @room.guest_check_out("Sam")
    assert_equal(1, @room.guests_number())
  end

  def test_check_for_songs_added_to_list
    song = Song.new({title: "Dancing Queen"})
    assert_equal(0, @room.song_list_length())
  end
# checking length of song list for the room
# passed

  def test_add_song_to_song_list
    song1 = Song.new({title: "Dancing Queen"})
    @room.song_list(song1)
    assert_equal(1, @room.song_list_length())
  end
# adding song to song list and test length of song list for the room
# to make sure song has been added to song array
# passed test

  def test_add_two_song_to_song_list
    song1 = Song.new({title: "Dancing Queen"})
    song2 = Song.new({title: "Parklife"})
    @room.song_list(song1)
    @room.song_list(song2)
    assert_equal(2, @room.song_list_length())
  end
# adding two songs to song list as above
# passed

end
