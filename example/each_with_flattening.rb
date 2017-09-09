[1, [2, 3], 4, [[5, 6], 7]].each_with_flattening { |s| print "#{s}," }
# >> 1, 2, 3, 4, 5, 6, 7
