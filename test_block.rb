# def one_two
# 	result = yield(1,2)
# 	puts result
# end

# one_two{ |a,b| a+b }


# one_two

def print_block_value
	puts yield
end

def other_method
	print_block_value {1+1}
end

other_method