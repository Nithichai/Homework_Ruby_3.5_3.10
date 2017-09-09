class Array
  def each_permuted
    while self.length > 0
      rand_i = rand(self.length)
      rand_value = self[rand_i]
      self.slice!(rand_i)
      yield rand_value
    end
  end
end

[1, 2, 3, 4].each_permuted { |i| print(i.to_s + ":") }
