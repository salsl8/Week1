# def ask_recursively question
# 	puts question
# 	reply = gets.chomp.downcase

# 	if reply == "yes"
# 		true
# 	elsif reply == "no"
# 		false
# 	else
# 		puts "Please answer 'yes' or 'no'."
# 		ask_recursively question
# 	end
# end

# ask_recursively "Do you wet the bed?"
# 			

# def factorial num
# 	if num < 0
# 		return "You can\'t take the factorial of a negative number!"
# 	end
# 	if num <= 1
# 		1
# 	else
# 		num * factorial(num-1)
# 	end
# end

# puts factorial (3)
# puts factorial (30)

# M = "land"
# o = "water"

# world = [[o, o, o, o, o, M, o, o, o, o, o,],
# 		 [o, o, o, o, M, M, o, o, o, o, o,],
# 		 [o, o, o, o, o, M, o, o, M, M, o,],
# 		 [o, o, o, M, o, M, o, o, o, M, o,],
# 		 [o, o, o, M, o, M, M, o, o, o, o,],
# 		 [o, o, o, o, M, M, M, M, o, o, o,],
# 		 [M, M, M, M, M, M, M, M, M, M, o,],
# 		 [o, o, o, M, M, M, M, M, M, o, o,],
# 		 [o, o, o, o, o, M, M, M, o, o, o,],
# 		 [o, M, o, o, o, M, o, o, o, o, o,],
# 		 [o, o, o, o, o, o, o, o, o, o, o,]]
# def continent_size world, x, y
# 	 if x < 0 or x > 10 or y < 0 or y > 10
# 	 	puts "Zero!"
# 	end
# 	if world[y][x] != "land"
#  	 return 0
#  	end

# size = 1
# world[y][x] = "counted land"

# size = size + continent_size(world, x-1, y-1)
# size = size + continent_size(world, x  , y-1)
# size = size + continent_size(world, x+1, y-1)
# size = size + continent_size(world, x-1, y  )
# size = size + continent_size(world, x+1, y  )
# size = size + continent_size(world, x-1, y+1)
# size = size + continent_size(world, x  , y+1)
# size = size + continent_size(world, x+1, y+1)
# size
# end
# puts continent_size(world, 5, 5)


#10.2 - Sorting
#Start with creating a first list of words.  Then sort it alphabetically.
#Generate a second list of words.  Sort this list alphabetically.
#Append << the shortest (furthest forward in the alphabet) word of the second list to the end of the first list.
#Repeat until the second list is empty.
#This exercise is in my github unders 'Recursive2.rb'

#10.3 - Shuffle Exercise

# puts 'Please enter as many words as you\'d like, with a minimum of 10.  When you are done, press "Enter" at the next cursor.'
# words = []
# while true
# 	word = gets.chomp 
# 		if word == word
# 			puts 
# 		end
		
# 		if word== '' #'' got it to stop looping
# 			break
# 		end
# 	words.push word
# end
# puts 'Here are your words, in order!'
# puts  words.sort
# puts
# def random arr  
# 	arr.sort_by{rand}		#method not necessary as you can just do words.shuffle
# end
# puts 'Here are your words, in random order!'
# puts random(words) 
# puts
# puts random(words)
# puts
# puts random(words)
# puts
# puts random(words)
# puts

#10.3 - dictionary sort
# puts 'Please enter as many words as you\'d like, with a minimum of 10.  When you are done, press "Enter" at the next cursor.'
# $words = []  #key was to make the 'words' variable more universal with '$'.
# while true
# 	word = gets.chomp 
# 		if word == word
# 			puts 
# 		end
		
# 		if word== '' #'' got it to stop looping
# 			break
# 		end
# 	$words.push word
# end

# def dictionary_sort arr
# 	$words.sort_by { |x| x.downcase}
# end

# puts 'Here are your words, in order!'

# puts
# puts dictionary_sort($words)

#10.4 English numbers
# def english_number number
# 	if number < 0 
# 		return "Please enter a number zero or greater."
# 	end
# 	if number > 100
# 		return "Please enter a number 100 or less."
# 	end
# 	num_string = ""  # This is the string we will return.

# # "left" is how much of the number 
# # we still have left to write out. 
# # "write" is the part we are # writing out right now. 
# # write and left... get it? :) 
# left = number 
# write = left/100 
# # How many hundreds left? 
# left = left - write*100 # Subtract off those hundreds.
# 	if write > 0
# 		return "one hundred"
# 	end
# 	write = left/10 # How many tens left? 
# 	left = left - write*10 # Subtract off those tens.
# 	if write > 0
# 		if write == 1
# 		elsif left == 2
# 			num_string = num_string + "twelve"
# 		elsif left == 3
# 			num_string = num_string + "thriteen"
# 		elsif left == 4
# 			num_string = num_string + "fourteen"
# 		elsif left == 5
# 			num_string = num_string + "fifteen"
# 		elsif left == 6
# 			num_string = num_string + "sixteen"
# 		elsif left == 7 
# 			num_string = num_string + "seventeen"
# 		elsif left == 8
# 			num_string = num_string + "eighteen"
# 		elsif left == 9
# 			num_string = num_string + "nineteen"
# 		end	
			
# 	left = 0
# 	elsif write == 2
# 		num_string = num_string + "twenty"
# 	elsif write == 3
# 		num_string = num_string + "thirty"
# 	elsif write == 4
# 		num_string = num_string + "forty"
# 	elsif write == 5
# 		num_string = num_string + "fifty"
# 	elsif write == 6
# 		num_string = num_string + "sixty"
# 	elsif write == 7
# 		num_string = num_string + "seventy"
# 	elsif write == 8
# 		num_string = num_string + "eighty"
# 	elsif write == 9
# 		num_string = num_string + "ninety"
# 	end
		
# 	if left > 0
# 		num_string = num_string + "-" 
# 	end
# end

# write = left  # How many ones left to write out?
# left = 0   # Subtract off those ones. 
# 	if write > 0
# 		if write == 1 
# 			num_string = num_string + "one"
# 		elsif write == 2
# 			num_string = num_string + "two"
# 		elsif write == 3
# 			num_string = num_string + "three"
# 		elsif write == 4
# 			num_string = num_string + "four"
# 		elsif write == 5
# 			num_string = num_string + "five"
# 		elsif write == 6
# 			num_string = num_string + "six"
# 		elsif write == 7
# 			num_string = num_string + "seven"
# 		elsif write == 8
# 			num_string = num_string + "eight"
# 		elsif write == 9
# 			num_string = num_string + "nine"
# 		end
# 	end

# 	if num_string == ""  # The only way "num_string" could be empty # is if "number" is 0.
# 		return "zero"
# 	end
# 	num_string


# puts english_number ( 0)
# puts english_number ( 9)
# puts english_number ( 10)
# puts english_number ( 11)
# puts english_number ( 17)	
# puts english_number ( 32)
# puts english_number ( 88)
# puts english_number ( 99)
# puts english_number (100)			
				
								
# If we got this far, then we had a number # somewhere in between 0 and 100, so we need # to return "num_string". 

#English Number version 2; includes thousands and millions elements.
def english_number number
	if number < 0
		return "Please enter a number that isn\'t a negative."
	end
	if number == 0
		return "zero"
	end

	num_string = ""
	ones_place = [	"one",		"two", 		"three",
					"four", 	"five",		"six",
					"seven",	"eight",	"nine"]
	tens_place = [	"ten",		"twenty", 	"thirty",
					"forty",	"fifty",	"sixty",
					"seventy", 	"eighty", 	"ninety"]
	teenagers = [	"eleven", 	"twelve",	"thirteen",
					"fourteen",	"fifteen",	"sixteen",
					"seventeen", "eighteen", "nineteen"]

	left = number
	write = left/1000000
	left = left - write*1000000

	if write>0
		millions = english_number write
		num_string = num_string + millions + " million "
		if left > 0
			num_string = num_string + " and "
		end
	end

	write = left/1000
	left = left - write*1000

	if write>0
		thousands = english_number write
		num_string = num_string + thousands + " thousand "
			
		if left > 0
			num_string = num_string + " and "
		end
	end

	write = left/100
	left = left - write*100

	if write > 0
		hundreds = english_number write
		num_string = num_string + hundreds + " hundred "
			
		if left > 0
			num_string = num_string + " and "
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write ==1) and (left >0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end

		if left > 0
			num_string = num_string + "-"
		end
	end

	write = left
	left = 0

	if write > 0 
		num_string = num_string + ones_place[write-1]
	end
	num_string
end

# puts english_number(  0)
# puts english_number(  9)
# puts english_number( 10)
# puts english_number( 11)
# puts english_number( 17)
# puts english_number( 32)
# puts english_number( 88)
# puts english_number( 99)
# puts english_number(100)
# puts english_number(101)
# puts english_number(234)
# puts english_number(1000)
# puts english_number(3211)
# puts english_number(9999999)
# puts english_number(1000000000000)
puts
num_at_start = 8
num_now = num_at_start
while num_now > 2 
	puts english_number(num_now).capitalize + ' bottles of beer on the wall, ' + english_number(num_now) + ' bottles of beer!' 
	num_now = num_now - 1
	puts 'Take one down, pass it around, ' + english_number(num_now) + ' bottles of beer on the wall!' 
	puts ""
	end
	puts
puts "Two bottles of beer on the wall, two bottles of beer!" 
puts "Take one down, pass it around, one bottle of beer on the wall!" 
puts
puts "One bottle of beer on the wall, one bottle of beer!" 
puts "Take one down, pass it around, no more bottles of beer on the wall!"

