def one_two
result = yield(1, 2)
puts result
end

one_two {|param1, param2| param1 + param2}