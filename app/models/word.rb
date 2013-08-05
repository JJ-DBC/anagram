class Word < ActiveRecord::Base
  

  def anagrams
    Word.where(sorted: self.sorted)
  end
end
