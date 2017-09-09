# Fibonacci iterator should be callable like this:
class FibSequence
  def initialize(number)
    @number = number
    @fib_list = Array.new
    number.times do |i| ; @fib_list.push(make_fib(i+1)) ; end
  end
  def make_fib(i)
    if i == 0 ; return 0 ; end
    if i == 1 ; return 1 ; end
    make_fib(i-1) + make_fib(i-2)
  end
  def each
    @fib_list.each do |fib| ; yield fib ; end
  end
  def reject
    @fib_list.reject do |fib| ; yield fib ; end
  end
  def map
    @fib_list.map do |fib| ; yield fib ; end
  end
end

f = FibSequence.new(6) # just the first 6 Fibonacci numbers
f.each { |s, i| print(s, ":") }  # => 1:1:2:3:5:8:
f.reject { |s| s.odd? }      # => [2, 8]
f.reject(&:odd?)             # => [2, 8] (a shortcut!)
f.map { |x| 2*x }            # => [2, 2, 4, 6, 10, 16]
