def unique?(string)
  sc = string.chars
  sc.each_index do |i|
    sc.each_index do |ii|
      next if ii <= i
      return false if sc[i] == sc[ii]
    end
  end
  true
end
def unique(string)
  if string.chars.uniq == string.charsg
    puts "Unique!"
  else
    puts "Repetetive!"
  end
end

p unique?("This is a string. Does it have repeated characters?")
p unique?("abcdefghijklmnopqrstuvwxyz")
unique("this one is gonna be repetetive")
unique("true as")

