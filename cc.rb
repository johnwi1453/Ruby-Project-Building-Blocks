# Caesar Cipher
# http://www.theodinproject.com/ruby-programming/building-blocks
# July 14
# Make a caesar cipher that takes in a string and int and returns the coded message.


def caesar_cipher(phrase, n)
  alphabet = ("a".."z").to_a
  new_phrase = ""

    phrase.each_char do |i|
	  if alphabet.include?(i)
	    char_position = alphabet.find_index(i) + n
	    char_position = char_position - alphabet.length if char_position >= alphabet.length
	    new_phrase += alphabet[char_position]
	  elsif alphabet.include?(i.downcase)
	  	char_position = alphabet.find_index(i.downcase) + n
	  	char_position = char_position - alphabet.length if char_position >= alphabet.length
	  	new_phrase += alphabet[char_position].upcase
	  else
	  	new_phrase += i
	  end
	end

	puts new_phrase
end

caesar_cipher("What a string!", 5)