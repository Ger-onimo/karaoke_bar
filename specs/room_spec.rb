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
    @guest1 = Guest.new("Charlie")
    @guest2 = Guest.new("Sam")
    #Guests added to array of guests
    @song1 = Song.new({title: "Dancing Queen", artist: "ABBA"})
    @song2 = Song.new({title: "Park Life", artist: "Blur"})

  end

  def test_room_has_a_name
    assert_equal("1", @room.name)
  end
#passed test

  def test_check_for_guests_checked_into_room
    assert_equal(0, @room.guests_number())
  end
#passed test

  def test_guests_checked_into_room
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.guests_number())
  end
#passed test

  def test_check_in_two_guests
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    assert_equal(2, @room.guests_number())
  end
#passed test

  def test_check_for_songs_added_to_list
    assert_equal(0, @room.song_list_length())
  end
#passed

def test_add_song_to_song_list
  @room.song_list(@song1)
  assert_equal(1, @room.song_list_length())
end

def test_add_two_song_to_song_list
  @room.song_list(@song1)
  @room.song_list(@song2)
  assert_equal(2, @room.song_list_length())
end

end
