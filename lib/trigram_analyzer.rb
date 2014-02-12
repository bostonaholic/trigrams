require 'sentences'
require 'trigrams'
require 'words'

class TrigramAnalyzer
  def self.analyze_text(text, patterns = {})
    Sentences.find(text).each do |sentence|
      analyze_sentence(sentence, patterns)
    end
    patterns
  end

  def self.analyze_sentence(sentence, patterns = {})
    Trigrams.find(sentence).each do |trigram|
      patterns[Words.first_two(trigram)] ||= []
      patterns[Words.first_two(trigram)] << Words.third(trigram)
    end
    patterns
  end
end
