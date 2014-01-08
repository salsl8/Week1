#1
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.each {|a| puts a}
puts

#2
arr.each {|a| puts a if a>5}
puts

#3
arr.each {|a| puts a if a>5 && a%2!=0} #this worked, but isn't legitimately using the select method
puts

arr.select {|a| puts a%2!=0} #this outputs true/false so I like it less than line 8 above
puts
arr.select {|a| puts a.even?} #just testing out the .odd/.even technique
puts

#4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push (11) 
	puts arr 
#arr.push (0) - surprise, this adds the 0 at the end
puts
arr.unshift (0) #this worked.  found "unshift" online.
	puts arr
puts

#5
arr.delete (11)
	puts arr
	puts

arr.push (3)
	puts arr
	puts

#6
puts arr.uniq

puts

#7an array vs. a Hash - A Hash is a dictionary-like collection of unique keys and their values. 
#Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.
#Arrays are ordered elements, hashes are not. 

#8
#ruby 1.8
{:a =>1}
#ruby 1.9
{a:1}

puts

#9
h = {a:1, b:2, c:3, d:4}
	h [:b]

puts
#10
h [:e] = 5 # why is this brackets instead of the wavy braces?

puts

#13
hash.delete_if {|k,v| v < 3.5}

puts

#14
#Hash values can be arrays, strings or fixnums ex. {a:[1,2,3], b: "string", c: 5}
#Arrays can be made of hashes ex. [{a:1, b:2}, {c:3, d:4}, {e: "left"}]

puts

#15
#Having trouble accessing railsapi.com.  it seems cool, if I could only get it to load.