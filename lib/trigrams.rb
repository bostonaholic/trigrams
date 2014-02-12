require 'ngrams'

class Trigrams
  def self.find(text)
    Ngrams.find(text, 3)
  end
end
