module AppAuthor
  @authors = []
  def list_all_author
    puts('No Authors Avalibale') if @authors.empty?
    @authors.each_with_index do |author, index|
      puts("#{index + 1} #{author.first_name.capitalize}  #{author.last_name.capitalize}")
    end
  end

  def add_author(author)
    @authors.push(author)
  end
end
