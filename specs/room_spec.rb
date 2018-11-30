require('minitest/autorun')
require('minitest/rg')

require_relative('../room')

class RoomTest < MiniTest::Test

  def test_room_has_a_name
    #initially had number, but hte number is the name
    #it is only an identifier for the room
    room = Room.new("1")
    assert_equal("1", room.name)

  end

end
