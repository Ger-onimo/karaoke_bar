require('minitest/autorun')
require('minitest/rg')

require_relative('../song')

class SongTest < MiniTest::Test

  # test class initialized
  def test_song_has_title
    song = Song.new("Dancing Queen")
    assert_equal("Dancing Queen", song.title)
  end

end
