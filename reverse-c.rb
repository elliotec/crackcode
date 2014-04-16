# The better way
a = "abcdef"
puts a.reverse!

# The more complicated manual way

class String
  def reverse_string!
    halved = self.length / 2
    rev = halved.times do |i|
     self[i], self[-i-1] = self[-i-1], self[i]
    end
    puts rev.to_s
  end
end

s = "john malkovich"

puts s.reverse_string!