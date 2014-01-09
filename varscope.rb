#play around with variable scope
a = 3

[1,2,3].each do |e|
	a = 25
	b = 19
	c = 12
end

puts a

puts

a = 3

[1,2,3].each do |e|
	a = 25
	b = 19
	c = 12
	[6,7,8].each do |e| #a nested do/end block
		b = 12
		c = 23
		d = 8
	end
	puts "b is " +b.to_s #still unclear as to why b and c print three times.
	puts "c is " +c.to_s
end

puts
 # calling methods
 # don't mutate the caller
 def hello
 	puts "Hello World!"
 end 
 puts hello #this "hello" is what is calling the method and prints the "Hello World"

 puts

 def greeting (word)
 	puts word
 end
 x = ["hi", "hello", "salutations"]
 greeting (x)

puts
#mutate the caller

def hello (arr)
	arr.uniq! #! is a bang that makes the mutation effective outside the block
end

greeting_arr = ["hi", "hello", "hi", "salutations", "hello"] #arr.uniq! will remove redundancies in this array
hello (greeting_arr)
puts greeting_arr
