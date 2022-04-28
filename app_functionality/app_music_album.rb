require './store_data/preserve_data'
require './classes/music_album'
require_relative 'app_genre'

module AppMusicAlbum
  include PreserveData

  def add_music_album
    music_albums = load_data('music')
    puts 'Add a music album'
    input = inp(['Enter Music Album Name',
                 'Enter albums published date', 'Is the album on spotify? (y/n)'])
    name = input[0]
    publish_date = input[1]
    on_spotify = input[2] == 'y' || false
    print 'Add genre: '
    genre = genre_input
    album = MusicAlbum.new(publish_date, name, on_spotify, genre)
    music_albums.push(album)
    album_data = { id: album.id, publish_date: publish_date,
                   name: name, on_spotify: on_spotify, genre: genre }
    update_data('music', album_data)
    puts "#{name} Album added successfully"
    add_genre(genre)
  end

  def list_all_music_albums
    music_albums = load_data('music')
    puts
    puts 'No music albums have been added yet.' if music_albums.empty?
    music_albums.each do |album|
      puts(
        "Publish date: #{album['publish_date']}, Music Album name: #{album['name']},
      On spotify: #{album['on_spotify']}, Music Genre: #{album['genre']}"
      )
      puts
    end
  end
end
