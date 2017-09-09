class Array
  def each_with_custom_index(first, step)
    i = first
    self.each do |name|
      yield name, i
      i += step
    end
  end
end

%w(alice bob carol).each_with_custom_index(3,2) do |person,index|
  p ">> #{person} is number #{index}"
end
