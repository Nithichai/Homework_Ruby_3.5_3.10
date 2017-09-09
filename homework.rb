class Fixnum
  def day    ; self * 60 * 60 * 24 ; end
end

class Time
  def at_beginning_of_year ; Time.local(self.year) ; end
end

puts Time.now.at_beginning_of_year + 1.day
# => 2017-01-02 00:00:00 +0700
