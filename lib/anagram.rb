class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(candidate_word_array)
    candidate_word_array.select do |word|
      compare_letter_arrays(word, self.word)
    end
  end

  def create_letter_array(word)
    word.split('').sort
  end

  def compare_letter_arrays(word_1, word_2)
    create_letter_array(word_1) == create_letter_array(word_2)
  end

end
