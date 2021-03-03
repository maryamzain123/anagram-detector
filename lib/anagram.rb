
require 'pry'
class Anagram
    def initialize(word)
        @word = word
        @array1 = @word.reverse.split("").sort
    end
        attr_accessor :word

    def match(possible_anagram)
        array1 = []
        possible_anagram.each do |words|
            if words.split("").sort == @array1
            array1 << words
            end
        end
        return array1
    end
end
