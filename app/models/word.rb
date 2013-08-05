class Word < ActiveRecord::Base
  
  def anagrams
    anagramed_words = []
    Word.where(sorted: self.sorted).find_each do |word|
      anagramed_words << word.term
    end

    anagramed_words
  end
end
