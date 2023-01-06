require 'set'
require_relative '../algorithm'

class Semordnilap < Algorithm
  attr_accessor :words

  def initialize(words)
    @words = words
  end

  def solve
    words_set = @words.to_set

    result = []
    @words.each do |word|
      reversed_word = reversed(word)
      if words_set.include?(reversed_word) && word != reversed_word
        result.push([word, reversed_word])
        words_set.delete(word)
        words_set.delete(reversed_word)
      end
    end

    return result
  end

  private

  def reversed(word)
    reversal = []

    split_string = word.split('')

    split_string.size.times { reversal << split_string.pop }
    reversal.join('')
  end
end