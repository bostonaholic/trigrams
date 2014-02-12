require 'ngrams'

class Words
  def self.third(text)
    word(text, 3)
  end

  def self.word(text, n=1)
    Ngrams.words(text)[n-1]
  end

  def self.first_two(text)
    Ngrams.words(text).first(2).join(' ')
  end

  def self.last_two(text)
    Ngrams.words(text).last(2).join(' ')
  end
end
