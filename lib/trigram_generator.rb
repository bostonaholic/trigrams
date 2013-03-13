require 'hash'

class TrigramGenerator

  def self.generate_text(patterns, number_of_paragraphs = 1, number_of_sentences = 1)
    number_of_paragraphs.times.map do
      generate_paragraph(patterns, number_of_sentences)
    end.join("\n\n")
  end

  def self.generate_paragraph(patterns, number_of_sentences = 1)
    number_of_sentences.times.map do
      generate_sentence(patterns)
    end.join(' ')
  end

  def self.generate_sentence(patterns)
    new_text = patterns.random_key
    begin
      new_text = "#{new_text} #{patterns[new_text.last_two_words].sample}"
    end while patterns.include?(new_text.last_two_words)
    "#{new_text.capitalize_first_word}."
  end
end

