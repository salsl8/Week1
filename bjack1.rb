@player_name = ''  #makes player_name a global variable to be used throughout.

def calculate_total (cards)
	arr = cards.map {|e| e[1]} #map itterates through each element in the array and performs the action in the {}

	total = 0
	arr.each do |value|
	  if value == "A"
	  	total += 11
	  elsif value.to_i == 0 #J, Q, K
	  	total += 10
	  else
	  	total += value.to_i
	  end
	end

	  arr.select {|e| e == "A"}.count.times do
	  	if total > 21
	  		total -= 10 
	  	end
	  end

	  # if arr.include?("A") && total > 21  this function doesn't take into account multiple Aces.
	  # 	total -= 10
	  # end
	total #this 'returns' the total.  'Return' is implied.
end

#cards 
	card_value = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
	card_suit = %w[Spades Clubs Hearts Diamonds]
	cards = card_suit.product (card_value)
	cards.shuffle!


puts "Have a seat"
puts "What\'s your name"
@player_name = gets.chomp
puts ""
puts "Welcome, #{@player_name}, glad you could join us!"
puts ""

#deal_cards - doesn't work as a method.
	
	player_hand = []
	dealer_hand = []
	
	player_hand << cards.pop
	dealer_hand << cards.pop
	player_hand << cards.pop
	dealer_hand << cards.pop


	player_total = calculate_total(player_hand)
	dealer_total = calculate_total(dealer_hand)
	
	puts "The dealer is showing a  #{dealer_hand [0]}."
	puts "#{@player_name}, you have a #{player_hand [0]} and #{player_hand[1]} for a total of #{player_total}."  


# def next_card (my original code, which caused a break after puts "Please enter...")
# 	player_hand = []

# 	player_hand << cards.pop

# 	puts "What would you like to do, #{@player_name}? Hit or Stay?"
# 	move = gets.chomp
# 		if move == "Hit"	
# 			puts "You got a #{player_hand [0]}."
# 		end
# 		if move == "Stay"
# 			deal_cards
# 			puts "Thank you.  The dealer has a #{dealer_hand[0]} and a #{dealer_hand[1]} for a total of #{dealer_total}."
# 		end
# 		puts "Please enter Hit or Stay, #{@player_name}."

# end

puts ""
if player_total == 21
	puts "#{@player_name}, you got Blackjack!!!  Congratulations, you win!!"
	exit
end

if dealer_total == 21
	puts "Sorry, #{@player_name}, the dealer hit blackjack.  You lose."
	exit
end

while player_total < 21
	puts "#{@player_name}, what would you like to do?  Hit or Stay?"
	hit_or_stay = gets.chomp

	if !["Hit", "Stay"].include?(hit_or_stay)
		puts "Please enter Hit or Stay."
		next
	end

	if hit_or_stay == "Stay"
		puts "#{@player_name}, you chose to stay."
		puts ""
		break
	end
puts ""
	new_card = cards.pop
	puts ""
	puts "Dealing card to player: #{new_card}."
	player_hand << new_card
	player_total = calculate_total(player_hand)
	puts ""
	puts "Your total is now #{player_total}."
	puts ""

	if player_total > 21
		puts "I'm sorry, #{@player_name}, you busted.  You lose."
		exit
	end
end	

puts "The dealer is showing a #{dealer_hand[0]}.  Their face down card is a #{dealer_hand[1]} for a total of #{dealer_total}."
puts ""
while dealer_total < 17
	new_card = cards.pop
	puts "The dealer hits, drawing a #{new_card}."
	puts ""
	dealer_hand << new_card
	dealer_total = calculate_total(dealer_hand)
	puts "The dealer's total is now: #{dealer_total}."
	puts""
	if dealer_total >21
		puts "The dealer busted.  You win, #{@player_name}!"
		exit
	end			
end

puts "The dealer's cards are:"
dealer_hand.each do |card|
	puts "=> #{card}"
end
puts "For a total of #{dealer_total}."
puts""
puts "Your cards are:"
player_hand.each do |card|
	puts "=> #{card}"	
end
puts "For a total of #{player_total}."
puts ""
if dealer_total > player_total
	puts "Sorry, the dealer won."
elsif dealer_total < player_total
	puts "Congratulations, #{@player_name}! You won!!!"
else
	puts "It's a push.  No winners this time."
end

# Trying to loop back to start
# puts "Would you like to play again?"
# answer = gets.chomp
# 	if answer == "No" || "no"
# 		puts "Thanks for playing #{@player_name}."
# 		exit
	#end

exit



	

# Procedural notes and initial coding thoughts.
# if dealer_hand < 17 
# 	deal_cards
# 	puts "Dealer draws a " +cards+ "."
# 	puts "The Dealer's total stands at " +dealer_hand + card_value+ "."
# end
# if dealer_hand >= 17
# 	puts "Dealer stands at " +card_value+ "."
# end
# if dealer_hand == 21
# 	puts "Dealer has Blackjack!  I'm sorry, but you lose."
# end
# if dealer_hand > 21
# 	puts "Dealer has gone over 21 and busted.  You win!"
# end

