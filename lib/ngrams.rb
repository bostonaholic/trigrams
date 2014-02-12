require 'string'
require 'array'

class Ngrams
  def self.find(text, n=1)
    words(text).adjacent_chunks(n).map do |chunk|
      chunk.join(' ')
    end
  end

  def self.words(text)
    remove_end_punctuation(text).split(' ')
  end

  def self.remove_end_punctuation(text)
    text.sub(/[.?!]\s*?$/, '')
  end
end
