require 'ngrams'
require 'rspec'

describe Ngrams do
  describe '#find' do
    it 'returns a list of 2 word phrases when passed size 2' do
      Ngrams.find('I wish I', 2).should be == ['I wish', 'wish I']
    end

    it 'returns a list of 1 word phrases with default 1' do
      Ngrams.find('I wish I').should be == ['I', 'wish', 'I']
    end
  end

  describe '#words' do
    it 'returns the words of a phrase' do
      Ngrams.words('dog cat bird').should be == ['dog', 'cat', 'bird']
    end

    it 'does not include the ending punctuation' do
      Ngrams.words('dog cat bird.').should be == ['dog', 'cat', 'bird']
    end
  end

  describe '#remove_end_punctuation' do
    it 'removes ending periods' do
      Ngrams.remove_end_punctuation('ending period.').should be == 'ending period'
    end

    it 'removes ending question mark' do
      Ngrams.remove_end_punctuation('ending question mark?').should be == 'ending question mark'
    end

    it 'removes ending exclamation point' do
      Ngrams.remove_end_punctuation('ending exclamation mark!').should be == 'ending exclamation mark'
    end

    it 'removes ending spaces' do
      Ngrams.remove_end_punctuation('ending spaces too. ').should be == 'ending spaces too'
    end

    it 'removes multiple ending spaces' do
      Ngrams.remove_end_punctuation('multiple ending spaces too.  ').should be == 'multiple ending spaces too'
    end
  end
end
