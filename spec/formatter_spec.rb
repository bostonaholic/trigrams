require 'rspec'
require 'formatter'

describe Formatter do
  describe '#capitalize_first_word' do
    it 'capitalizes only the first word' do
      Formatter.capitalize_first_word('dog cat Bird').should be == 'Dog cat Bird'
    end
  end

  describe '#remove_end_punctuation' do
    it 'removes ending periods' do
      Formatter.remove_end_punctuation('ending period.').should be == 'ending period'
    end

    it 'removes ending question mark' do
      Formatter.remove_end_punctuation('ending question mark?').should be == 'ending question mark'
    end

    it 'removes ending exclamation point' do
      Formatter.remove_end_punctuation('ending exclamation mark!').should be == 'ending exclamation mark'
    end

    it 'removes ending spaces' do
      Formatter.remove_end_punctuation('ending spaces too. ').should be == 'ending spaces too'
    end

    it 'removes multiple ending spaces' do
      Formatter.remove_end_punctuation('multiple ending spaces too.  ').should be == 'multiple ending spaces too'
    end
  end
end
