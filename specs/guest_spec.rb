require('minitest/autorun')
require('minitest/rg')

require_relative('../guest')

class GuestTest < MiniTest::Test
#
  def test_guest_name
    guest = Guest.new("Charlie",50)
    assert_equal("Charlie", guest.name)
  end
  #test initialzed
  def test_guest_money
    guest = Guest.new("Charlie", 50)
    assert_equal(50.0, guest.money)
  end

  # def test_spend_money
  #   guest = Guest.new("Charlie", 50)
  #   assert_equal(35.0, guest.spend_money)
  # end

end
