require 'rspec'
require 'formatter'

describe Formatter do
  describe '#capitalize_first_word' do
    it 'capitalizes only the first word' do
      Formatter.capitalize_first_word('dog cat Bird').should == 'Dog cat Bird'
    end
  end

  describe '#remove_end_punctuation' do
    it 'removes ending periods' do
      Formatter.remove_end_punctuation('ending period.').should == 'ending period'
    end

    it 'removes ending question mark' do
      Formatter.remove_end_punctuation('ending question mark?').should == 'ending question mark'
    end

    it 'removes ending exclamation point' do
      Formatter.remove_end_punctuation('ending exclamation mark!').should == 'ending exclamation mark'
    end

    it 'removes ending spaces' do
      Formatter.remove_end_punctuation('ending spaces too. ').should == 'ending spaces too'
    end

    it 'removes multiple ending spaces' do
      Formatter.remove_end_punctuation('multiple ending spaces too.  ').should == 'multiple ending spaces too'
    end
  end
end
