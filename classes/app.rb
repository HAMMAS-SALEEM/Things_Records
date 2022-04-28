require_relative 'music_album'
require_relative 'genre'
require './classes/preserve_data'
require './modules/app_music_album'
require './modules/app_genre'

class App
  include ProcessData
  include AppMusicAlbum
  include AppGenre
end
