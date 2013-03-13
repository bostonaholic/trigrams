class String

  def words
    self.remove_end_punctuation.split(' ')
  end

  def word(n=1)
    words[n-1]
  end

  def first_two_words
    words.first(2).join(' ')
  end

  def last_two_words
    words.last(2).join(' ')
  end

  def third_word
    word(3)
  end

  def n_grams(n = 1)
    words.congruent_chunks(n).map do |chunk|
      chunk.join(' ')
    end
  end

  def trigrams
    n_grams(3)
  end

  def capitalize_first_word
    self[0].upcase + self.slice(1..self.size)
  end

  def remove_end_punctuation
    self.sub(/[.?!]\s*?$/, '')
  end

  def sentences
    self.split(/[.?!(\n+)](?=\s+|$)/).reject(&:empty?).each { |it| it.strip! }
  end

  def paragraphs
    self.split(/\n+/).each { |it| it.strip! }
  end
end
