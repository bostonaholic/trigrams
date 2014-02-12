require 'string'
require 'array'
require 'formatter'

class Ngrams
  def self.find(text, n=1)
    words(text).adjacent_chunks(n).map do |chunk|
      chunk.join(' ')
    end
  end

  def self.words(text)
    Formatter.remove_end_punctuation(text).split(' ')
  end
end
