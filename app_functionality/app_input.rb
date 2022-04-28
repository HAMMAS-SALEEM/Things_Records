module Input
  def inp(array)
    array_inputs = []
    array.each do |i|
      print "#{i}: "
      array_inputs.push(gets.chomp)
    end
    array_inputs
  end
end
