class Apple
    include Comparable
    attr_accessor :weight
    
    def initialize(weight)
        self.weight = weight
    end

    def <=>(other)
        self.weight <=> other.weight
    end
end

small_apple = Apple.new(0.1)
medium_apple = Apple.new(0.2)
big_apple = Apple.new(0.3)

puts small_apple > medium_apple
puts medium_apple.between?(small_apple, big_apple)