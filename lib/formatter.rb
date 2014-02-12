class Formatter
  def self.capitalize_first_word(text)
    text[0].upcase + text.slice(1..text.size)
  end

  def self.remove_end_punctuation(text)
    text.sub(/[.?!]\s*?$/, '')
  end
end
