require 'json'
require_relative '../classes/author'
module AuthorStore
  def write_author(first_name, last_name)
    data = []
    author = Author.new(first_name, last_name)
    data.push(author)
    json = if File.exist?('./data/author.json')
             load_author.push({ first_name: first_name, last_name: last_name })
           else
             data.map do |one_author|
               { first_name: one_author.first_name, last_name: author.last_name }
             end
           end
    File.write('./data/author.json', json.to_json)
  end

  def load_author
    if File.exist?('./data/author.json')
      JSON.parse(File.read('./data/author.json'))
    else
      []
    end
  end
end
