def unique(string)
  @a = []
  #sc = string.chars
  string.each_char do |i|
    string.each_char do |ii|
      if string.each_char[ii] == string.each_char[i]
        @a << ii
        p @a
      end
    end
  end
end

#unique("abcdefghijklmnopqrstuvwxyz")

unique("not very unique at all")


