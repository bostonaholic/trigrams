require 'sentences'
require 'trigrams'

class TrigramAnalyzer
  def self.analyze_text(text, patterns = {})
    Sentences.find(text).each do |sentence|
      analyze_sentence(sentence, patterns)
    end
    patterns
  end

  def self.analyze_sentence(sentence, patterns = {})
    Trigrams.find(sentence).each do |trigram|
      patterns[trigram.first_two_words] ||= []
      patterns[trigram.first_two_words] << trigram.third_word
    end
    patterns
  end
end
