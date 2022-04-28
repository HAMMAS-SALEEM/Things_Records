require './classes/label'
require_relative 'app_input'
require './store_data/preserve_data'

module AppLabel
  include Input
  include PreserveData

  def list_all_labels
    labels = load_data('label')
    puts('No Labels Avalibale') if labels.empty?
    labels.each_with_index do |label, index|
      puts(
        "#{index + 1}) Title: #{label['title']}, Color: #{label['color']}"
      )
    end
  end

  def add_label
    input = inp(['Label Title', 'Label Color'])
    label = Label.new(input[0], input[1])
    label_obj = { title: label.title, color: label.color }
    update_data('label', label_obj)
    puts('Label created Successfully')
  end
end
