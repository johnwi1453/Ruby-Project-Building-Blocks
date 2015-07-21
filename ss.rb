# Substrings.
# http://www.theodinproject.com/ruby-programming/building-blocks
# July 16
# Make a method that takes two arguments: one word and then an array of substrings.
# It should return a hash listing each substring and how many times it was found.


def substrings(string, dictionary)
  results = Hash.new

  dictionary.each do |substring|
    count = string.scan(substring).length
    unless count <= 0
      results[substring] = count
    end
  end
  puts results
end

dictionary = ["howdy", "hello", "horn", "you", "partner"]


substrings("howdy partner", dictionary)