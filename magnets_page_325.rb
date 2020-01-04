module Curios
    def investigate(thing)
        puts "Look at #{thing}"    
    end 
end

module Clumsy
    def break(thing)
        puts "Knocks over #{thing}"
    end
end

class Monkey
    include Curios
    include Clumsy
end

bubbles = Monkey.new
bubbles.investigate("vase")
bubbles.break("vase")