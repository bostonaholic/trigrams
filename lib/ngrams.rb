require 'words'

class Ngrams
  def self.find(text, n=1)
    Words.find(text).each_cons(n).map do |chunk|
      chunk.join(' ')
    end
  end
end
