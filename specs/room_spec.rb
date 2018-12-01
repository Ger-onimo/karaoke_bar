require('minitest/autorun')
require('minitest/rg')

require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("1")
    # the room number is a string as it is only an identifier for the room,
    # so not used for calculations
    @guest1 = Guest.new("Charlie")
    @guest2 = Guest.new("Sam")
    # @guest[@guest1, @guest2]
  end

  def test_room_has_a_name
    assert_equal("1", @room.name)
  end
#passed test

  def test_check_for_number_guests_in_room
    assert_equal(0, @room.guests_in_room())
  end
#passed test

  def test_check_in_guests
    @room.check_in_guest(@guest1)
    assert_equal(1, @room.guests_in_room())
  end

  def test_check_in_multiple_guests
    @room.check_in_guest(@guest1)
    @room.check_in_guest(@guest2)
    assert_equal(2, @room.guests_in_room())
  end
end
