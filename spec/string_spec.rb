require 'string'
require 'rspec'

describe String do
  context 'n_grams' do
    it 'returns a list of 2 word phrases when passed size 2' do
      'I wish I'.n_grams(2).should be == ['I wish', 'wish I']
    end

    it 'returns a list of 1 word phrases with default 1' do
      'I wish I'.n_grams.should be == ['I', 'wish', 'I']
    end
  end

  context 'trigrams' do
    it 'returns a list of 3 word phrases' do
      'I wish I may'.trigrams.should be == ['I wish I', 'wish I may']
    end
  end

  it 'returns the words of a phrase' do
    'dog cat bird'.words.should be == ['dog', 'cat', 'bird']
  end

  it 'does not include the ending punctuation' do
    'dog cat bird.'.words.should be == ['dog', 'cat', 'bird']
  end

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

  context 'removing end punctuation' do
    it 'removes ending periods' do
      'ending period.'.remove_end_punctuation.should be == 'ending period'
    end

    it 'removes ending question mark' do
      'ending question mark?'.remove_end_punctuation.should be == 'ending question mark'
    end

    it 'removes ending exclamation point' do
      'ending exclamation mark!'.remove_end_punctuation.should be == 'ending exclamation mark'
    end

    it 'removes ending spaces' do
      'ending spaces too. '.remove_end_punctuation.should be == 'ending spaces too'
    end

    it 'removes multiple ending spaces' do
      'multiple ending spaces too.  '.remove_end_punctuation.should be == 'multiple ending spaces too'
    end
  end

  context 'parsing sentences' do
    it 'returns a list of sentences' do
      'This is a sentence.  This is too.'.sentences.should be == ['This is a sentence', 'This is too']
    end

    it 'returns a list of sentences with different punctuation' do
      'This is a sentence.  Is this a sentence? It is!'.sentences.should be == ['This is a sentence',
                                                                                'Is this a sentence',
                                                                                'It is']
    end

    it 'returns a list of sentences for multiple paragraphs' do
      'This is a sentence.  This is too.

      This is a new paragraph.  And another sentence.'.sentences.should be == ['This is a sentence',
                                                                               'This is too',
                                                                               'This is a new paragraph',
                                                                               'And another sentence']
    end
  end

  it 'returns a list of paragraphs' do
    'This is a sentence. This is too.

    This is a new paragraphs.  An a new sentence for the paragraph.'.paragraphs.should be == ['This is a sentence. This is too.',
                                                                                              'This is a new paragraphs.  An a new sentence for the paragraph.']
  end
end
