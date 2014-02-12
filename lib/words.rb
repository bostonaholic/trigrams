require 'formatter'

class Words
  def self.find(text)
    Formatter.remove_end_punctuation(text).split(' ')
  end

  def self.third(text)
    word(text, 3)
  end

  def self.word(text, n=1)
    find(text)[n-1]
  end

  def self.first_two(text)
    find(text).first(2).join(' ')
  end

  def self.last_two(text)
    find(text).last(2).join(' ')
  end
end
