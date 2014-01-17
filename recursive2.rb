puts 'Please enter as many words as you\'d like.  When you are done, press "Enter" at the next cursor.'
first_words = []
while true
	word = gets.chomp 
		if word == word
			puts 
		end
		
		if word== '' #'' got it to stop looping
			break
		end
	first_words.push word
end
puts 'Here are your words, in order!'
puts first_words.sort
puts
puts 'Again, please enter as many words as you\'d like.  When you are done, press "Enter" at the next cursor.'

second_words = []
while true
	word = gets.chomp
		if word == word
			puts
		end
		if word == ''
			break
		end
	second_words.push word
end
puts 'Here is your second list of words, in order:'
puts second_words.sort


def sort arr
	rec_sort arr, []
end
 def rec_sort second_words, first_words
 	if second_words.length <= 0
 		return first_words
 	end

 	smallest = second_words.pop
 	still_unsorted = []

 	second_words.each do |tested_object|
 		if tested_object < smallest
 			still_unsorted.push smallest
 			smallest = tested_object
 		else
 			still_unsorted.push tested_object
 		end
 	end

 	first_words.push smallest

 	rec_sort still_unsorted, first_words
 end
puts 
puts (sort (first_words) + (second_words))