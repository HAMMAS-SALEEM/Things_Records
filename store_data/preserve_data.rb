require 'json'

module PreserveData
  def fetch_data(file)
    path = "./data/#{file}.json"
    File.new(path, 'w+') unless File.exist?(path)
    File.write(path, []) if File.empty?(path)
    contents = File.read(path)
    JSON.parse(contents)
  end

  def update_data(file, data)
    opts = {
      array_nl: "\n",
      object_nl: "\n",
      indent: ' ',
      space_before: ' ',
      space: ' '
    }
    stored_data = fetch_data(file)
    stored_data.push(data)
    json_data = JSON.generate(stored_data, opts)
    File.write("./data/#{file}.json", json_data)
  end

  def load_data(file)
    path = "./data/#{file}.json"
    if File.exist?(path)
      File.write(path, '[]') if File.empty?(path)
      JSON.parse(File.read(path))
    else
      []
    end
  end
end
