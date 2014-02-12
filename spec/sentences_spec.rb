require 'rspec'
require 'sentences'

describe Sentences do
  describe '#find' do
    it 'returns a list of sentences' do
      Sentences.find('This is a sentence.  This is too.').should be == ['This is a sentence', 'This is too']
    end

    it 'returns a list of sentences with different punctuation' do
      Sentences.find('This is a sentence.  Is this a sentence? It is!').should be == ['This is a sentence',
                                                                                      'Is this a sentence',
                                                                                      'It is']
    end

    it 'returns a list of sentences for multiple paragraphs' do
      Sentences.find('This is a sentence.  This is too.

      This is a new paragraph.  And another sentence.').should be == ['This is a sentence',
                                                                      'This is too',
                                                                      'This is a new paragraph',
                                                                      'And another sentence']
    end
  end
end
