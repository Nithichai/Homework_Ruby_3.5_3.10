class Array
  def each_with_flattening(obj=self)
    obj.each do |i|
      if i.class == Integer
        yield i
      elsif i.class == Array
        each_with_flattening(i) { |s| print "#{s}," }
      end
    end
  end
end

[1, [2, 3], 4, [[5, 6], 7]].each_with_flattening { |s| print "#{s}," }
