require 'ngrams'

class String
  def word(n=1)
    Ngrams.words(self)[n-1]
  end

  def first_two_words
    Ngrams.words(self).first(2).join(' ')
  end

  def last_two_words
    Ngrams.words(self).last(2).join(' ')
  end

  def third_word
    word(3)
  end

  def capitalize_first_word
    self[0].upcase + self.slice(1..self.size)
  end

  def paragraphs
    self.split(/\n+/).each { |it| it.strip! }
  end
end
