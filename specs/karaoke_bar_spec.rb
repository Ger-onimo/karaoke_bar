require('minitest/autorun')
require('minitest/rg')

require_relative('../karaoke_bar')

class KaraokeBarTest < MiniTest::Test

  def test_karaoke_bar_has_a_name
    karaoke_bar = KaraokeBar.new("The Catterwaul", 15) #instantiate new KaraokeBar object
    assert_equal("The Catterwaul", karaoke_bar.name )
    #expected argument = actual result when object karaoke_bar calls name parameter
  end

  def test_karaoke_bar_entry_fee
    karaoke_bar = KaraokeBar.new("The Catterwaul", 15) #instantiate new KaraokeBar object
    assert_equal( 15, karaoke_bar.entry_fee )
  end

  def test_karaoke_bar_rooms

  end

end
