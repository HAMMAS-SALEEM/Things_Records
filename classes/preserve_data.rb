require 'json'

module ProcessData
  def fetch_data(file)
    file_path = "./data/#{file}.json"
    File.new(file_path, 'w+') unless File.exist?(file_path)
    File.write(file_path, '[]') if File.empty?(file_path)
    contents = File.read(file_path)
    JSON.parse(contents)
  end

  def update_data(file, data)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: '  ',
      space_before: ' ',
      space: ' '
    }
    stored_data = fetch_data(file)
    stored_data.push(data)
    json_data = JSON.generate(stored_data, opts)
    File.write("./data/#{file}.json", json_data)
  end

  def load_music
    fetch_data('music').map do |album|
      MusicAlbum.new(album['publish_date'], album['archived'], album['name'], album['on_spotify'],
                     album['genre'])
    end
  end

  def load_genre
    fetch_data('genre').map do |genre|
      Genre.new(genre['name'])
    end
  end
end
