module Input
  def input(arr)
    inputs = []
    arr.each do |item|
      print "#{item}: "
      inputs.push(gets.chomp)
    end
    inputs
  end
end
