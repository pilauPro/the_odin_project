# for each dictionary entry, search against input word(s) and create
# a new key in the hash with value 1 or add one to existing keys and return complete
# search hash
def substrings(input, dictionary)
	results = {}
	dictionary.each do |word|
		input.each do |e|
			if e.downcase.include?(word.downcase)
				if results.has_key?(word.downcase)
					results[word] += 1
				else 
					results[word] = 1
				end
			end
		end
	end
	return results
end


puts "Enter your dictionary words seperated by comma and/or space:"

dictionary = gets.chomp.split(/[, ]/)
dictionary.delete("")

puts "Enter your word/string to search in dictionary:"

# make array of words from user input, splitting on non alpha characters
user_input = gets.chomp.split(/[\W+]/)
user_input.delete("")

# send user_input & dictionary arrays and store result in hash
search_hash = substrings(user_input, dictionary) 

puts search_hash
