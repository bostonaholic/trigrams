require 'rspec'
require 'paragraphs'

describe Paragraphs do
  describe '#find' do
    it 'returns a list of paragraphs' do
      Paragraphs.find('This is a sentence. This is too.

      This is a new paragraphs.  An a new sentence for the paragraph.').should be == ['This is a sentence. This is too.',
                                                                                                'This is a new paragraphs.  An a new sentence for the paragraph.']
    end
  end
end
