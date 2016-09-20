require 'rspec'
require 'paragraphs'

describe Paragraphs do
  describe '#find' do
    it 'returns a list of paragraphs' do
      Paragraphs.find('This is a sentence. This is too.

      This is a new paragraph.  An a new sentence for the paragraph.').should ==
      ['This is a sentence. This is too.', 'This is a new paragraph.  An a new sentence for the paragraph.']
    end
  end
end
