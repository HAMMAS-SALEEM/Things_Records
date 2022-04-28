require './classes/preserve_data'
module AppGenre
  include ProcessData
  def add_genre(genre, genres)
    name = genre
    newgenre = Genre.new(name)
    genres.push(newgenre)
    genre_data = { id: newgenre.id, name: name }
    update_data('genre', genre_data)

    puts "Genre #{name} Added successfully"
  end

  def list_all_genres(genres)
    puts
    puts 'No Genres have been added yet' if genres.empty?
    genres.each_with_index do |genre, i|
      puts "#{i + 1}: Genre Name: #{genre.name}"
    end
    puts
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

end