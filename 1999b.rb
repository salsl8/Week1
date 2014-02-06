puts 'Please enter a Roman numeral'
roman = gets.chomp.upcase
puts ''
puts "You entered: #{roman}" 

total = 0

while roman.length > 0  
	if roman[0] == 'M'
		total = total + 1000
			roman = roman[1..-1]
	elsif roman[0..1] == 'CM'
		total = total + 900	
			roman = roman[2..-1]
	elsif roman[0] == 'D'
		total = total + 500
			roman = roman[1..-1]
	elsif roman[0] == 'C'
		total = total + 100
			roman = roman[1..-1]
	elsif roman[0..1] == 'XC'
		total = total + 90
			roman = roman[2..-1]
	elsif roman[0] == 'L'
		total = total + 50
			roman = roman[1..-1]
	elsif roman[0..1] == 'XL'
		total = total + 40
			roman = roman[2..-1]
	elsif roman[0] == 'X'
		total = total + 10
			roman = roman[1..-1]
	elsif roman[0..1] == 'IX'
		total = total + 9
			roman = roman[2..-1]
	elsif roman[0] == 'V'
		total = total + 5
			roman = roman[1..-1]
	elsif roman[0..1] == 'IV'
		total = total + 4
			roman = roman[2..-1]
	elsif roman[0] == 'I'
		total = total + 1							
			roman = roman[1..-1]
	end
	
end
puts 
puts 'This equals ' +total.to_s
puts
