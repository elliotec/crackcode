class UniqueString
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
    sc = string.chars
    if sc.uniq == sc
      puts "Unique!"
    else
      p sc.uniq.
       map { |e| [sc.count(e), e] }.
       select { |c, _| c > 1 }.
       sort.reverse.
       map { |c, e| "#{e}:#{c}" }
    end
  end
end

try = UniqueString.new

p try.unique?("This is a string. Does it have repeated characters?")
p try.unique?("abcdefghijklmnopqrstuvwxyz")
try.unique("this one is gonna be repetetive")
try.unique("true as")
try.unique("abcdefghijklmnopqrstuvwxyzbhdieomcndhsjsla;soeidkdhdhwiwnwiwnwiwnw")

