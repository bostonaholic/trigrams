require 'hash'
require 'formatter'
require 'words'

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
      new_text = "#{new_text} #{patterns[Words.last_two(new_text)].sample}"
    end while patterns.include?(Words.last_two(new_text))
    "#{Formatter.capitalize_first_word(new_text)}."
  end
end

