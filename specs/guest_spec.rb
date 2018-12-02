require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class GuestTest < MiniTest::Test
#
  def test_guest_name
    guest = Guest.new("Charlie",0)
    assert_equal("Charlie", guest.name)
  end
  #test initialzed
  def test_guest_money
    guest = Guest.new("Charlie", 0)
    assert_equal(0, guest.money)
  end




end
