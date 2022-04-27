require_relative 'music_album'
require_relative 'genre'
require './classes/preserve_data'

class App
  include ProcessData

  def add_a_music_album(music_albums, genres)
    puts 'Add a music album'
    print 'Enter music albums name: '
    name = gets.chomp
    print 'Enter albums published date: '
    publish_date = gets.chomp
    print 'Is the album on spotify? (y/n)'
    on_spotify = gets.chomp.downcase == 'y' || false
    print 'Add genre: '
    genre = genre_input(genres)
    archived = false
    album = MusicAlbum.new(publish_date, archived, name, on_spotify, genre)
    music_albums.push(album)
    album_data = { id: album.id, publish_date: publish_date, archived: false,
                   name: name, on_spotify: on_spotify, genre: genre }
    update_data('music', album_data)
    puts "#{name} Album added successfully"
    add_genre(genre, genres)
  end

  def genre_input(genres)
    if genres.empty?
      puts 'No Genres have been added yet'
      print 'enter a Genre name:'
    else
      puts 'Select genre for the list.'
      genres.each_with_index { |genre, index| puts "#{index} Name: #{genre.name}" }
      print 'Enter name of genre or Enter a new Genre: '
    end
    gets.chomp.downcase
  end

  def add_genre(genre, genres)
    name = genre
    newgenre = Genre.new(name)
    genres.push(newgenre)
    genre_data = { id: newgenre.id, name: name }
    update_data('genre', genre_data)

    puts "Genre #{name} Added successfully"
  end

  def list_all_music_albums(music_albums)
    puts
    puts 'No music albums have been added yet.' if music_albums.empty?
    music_albums.each do |album|
      puts "Publish date: #{album.publish_date}"
      puts "Music Album name: #{album.name}"
      puts "On spotify: #{album.on_spotify}"
      puts "Music Genre: #{album.genre}"
      puts
    end
  end

  def list_all_genres(genres)
    puts
    puts 'No Genres have been added yet' if genres.empty?
    genres.each_with_index do |genre, i|
      puts "#{i + 1}: Genre Name: #{genre.name}"
    end
    puts
  end
end
