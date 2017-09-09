# Fibonacci iterator should be callable like this:
f = FibSequence.new(6) # just the first 6 Fibonacci numbers
f.each { |s| print(s,':') }  # => 1:1:2:3:5:8:
f.reject { |s| s.odd? }      # => [2, 8]
f.reject(&:odd?)             # => [2, 8] (a shortcut!)
f.map { |x| 2*x }            # => [2, 2, 4, 6, 10, 16]
