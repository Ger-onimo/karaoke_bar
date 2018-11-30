require('minitest/autorun')
require('minitest/rg')

require_relative('../karaoke_bar')

class KaraokeBarTest < MiniTest::Test

  def test_karaoke_bar_has_a_name
    karaoke_bar = KaraokeBar.new("The Catterwaul") #instantiate new KaraokeBar object
    assert_equal("The Catterwaul", karaoke_bar.name )
    #expected argument = actual result when object karaoke_bar calls name parameter
  end

end
