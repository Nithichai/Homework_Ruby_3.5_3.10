#  Note: Time.now returns current time as seconds since epoch
class Fixnum
  def day    ; self * 60 * 60 * 24 ; end
end

class Time
  def at_beginning_of_year ; Time.local(self.year) ; end
end

puts Time.now.at_beginning_of_year + 1.day
