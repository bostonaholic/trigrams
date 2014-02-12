require 'adjacent_chunks'
require 'words'

class Ngrams
  def self.find(text, n=1)
    AdjacentChunks.find(Words.find(text), n).map do |chunk|
      chunk.join(' ')
    end
  end
end
