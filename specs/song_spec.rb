require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class SongTest < MiniTest::Test

  def test_song_has_title
    song = Song.new("Dancing Queen")
    p "song added " + song.inspect
    assert_equal("Dancing Queen", song.title)
  end
####class initailized test
end
