class WordSplitter
    include Enumerable
    attr_accessor :string
    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end

# splitter = WordSplitter.new
# splitter.string = "one two three four"
# splitter.each {|word| puts word}

# splitter.string = "how do you do"

# p splitter.find_all {|word| word =~ /d/}
# p splitter.any? { |word| word.include?("o") }
# p splitter.any?
# p splitter.count
# p splitter.sort
# p splitter