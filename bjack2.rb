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



suits = ["H", "D", "S", "C"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

deck = suits.product(cards)
deck.shuffle!

#Deal cards
mycards = []
dealercards = []

mycards << deck.pop
dealercards << deck.pop
mycards << deck.pop
dealercards << deck.pop


dealer_total = calculate_total(dealercards)
my_total = calculate_total(mycards)

puts "Dealer is showing a #{dealercards[0]} and #{dealercards[1]} for a total of #{dealer_total}."
puts "Your cards are a #{mycards[0]} and #{mycards[1]}, for a total of #{my_total}."
puts ""

if my_total == 21
	puts "Blackjack!!!"
	exit
end

if dealer_total == 21
	puts "Sorry, dealer hit blackjack.  You lose."
	exit
end

while my_total < 21
	puts "What would you like to do?  Hit or Stay?"
	hit_or_stay = gets.chomp

	if !["Hit", "Stay"].include?(hit_or_stay)
		puts "Please enter Hit or Stay."
		next
	end

	if hit_or_stay == "Stay"
		puts "Thank you.  You chose to stay."
		break
	end
puts ""
	new_card = deck.pop
	puts ""
	puts "Dealing card to player: #{new_card}."
	mycards << new_card
	my_total = calculate_total(mycards)
	puts ""
	puts "Your total is now #{my_total}."

	if my_total == 21
	puts "Blackjack!!!"
	exit
	elsif my_total > 21
		puts "I'm sorry, you busted.  You lose."
		exit
	end
end	



while dealer_total < 17
	new_card = deck.pop
	puts "Dealing a new card to the dealer: #{new_card}."
	dealercards << new_card
	dealer_total = calculate_total(dealercards)
	puts "Dealer total is now: #{dealer_total}."

	if dealer_total == 21
		puts "Sorry, dealer hit blackjack.  You lose."
		exit
	elsif dealer_total >21
		puts "Dealer busted.  You win!"
		exit
	end			
end

puts "The dealer's cards are:"
dealercards.each do |card|
	puts "=> #{card}."
end
puts""
puts "Your cards are:"
mycards.each do |card|
	puts "=> #{card}."
end
puts ""
if dealer_total > my_total
	puts "Sorry, the dealer won."
elsif dealer_total < my_total
	puts "Congratulations, you won!!!"
else
	puts "It's a push.  No winners."
end
exit
