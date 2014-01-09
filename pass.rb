# def some_method (arr)
# 	arr.each {|a| puts a if a%3==0}
# end

# num_arr = [2,4,5,7,8,12,19,23,39,2,5,8,19,12]
# some_method (num_arr)

# puts



def some_method (arr)
	arr.uniq!
end

num_arr = [2,4,5,7,8,12,19,23,39,2,5,8,19,12]
some_method (num_arr)
puts num_arr