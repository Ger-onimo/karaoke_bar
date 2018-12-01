require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class GuestTest < MiniTest::Test
#
  def test_guest_name
    guest = Guest.new("Charlie")
    assert_equal("Charlie", guest.name)
  end
  #test initialzed
end
