class Foo
  def initialize ; @history = [] ; end
  def bar=(bar) ; @bar = bar ; @history.push(@bar) ; end
  def bar ; @bar ; end
  def history(attr) ; @history ; end
end

p f = Foo.new     # => #<Foo:0x127e678>
p f.bar = 3       # => 3
p f.bar = :wowzo  # => :wowzo
p f.bar = 'boo!'  # => 'boo!'
print f.history(:bar) # => [3, :wowzo, 'boo!']
