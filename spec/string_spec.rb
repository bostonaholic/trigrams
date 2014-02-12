require 'string'
require 'rspec'

describe String do
  it 'returns a specific word of a phrase' do
    'dog cat bird'.word(2).should be == 'cat'
  end

  it 'returns the first word if no argument is given' do
    'dog cat bird'.word.should be == 'dog'
  end

  it 'returns the first two words of a phrase' do
    'dog cat bird'.first_two_words.should be == 'dog cat'
  end

  it 'returns the last two words of a phrase' do
    'dog cat bird'.last_two_words.should be == 'cat bird'
  end

  it 'returns the third word of a phrase' do
    'dog cat bird'.third_word.should be == 'bird'
  end

  it 'capitalizes only the first word' do
    'dog cat Bird'.capitalize_first_word.should be == 'Dog cat Bird'
  end

  it 'returns a list of paragraphs' do
    'This is a sentence. This is too.

    This is a new paragraphs.  An a new sentence for the paragraph.'.paragraphs.should be == ['This is a sentence. This is too.',
                                                                                              'This is a new paragraphs.  An a new sentence for the paragraph.']
  end
end
