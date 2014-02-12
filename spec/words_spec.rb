require 'rspec'
require 'words'

describe Words do
  describe '#find' do
    it 'returns the words of a phrase' do
      Words.find('dog cat bird').should be == ['dog', 'cat', 'bird']
    end

    it 'does not include the ending punctuation' do
      Words.find('dog cat bird.').should be == ['dog', 'cat', 'bird']
    end
  end

  describe '#word' do
    it 'returns a specific word of a phrase' do
      Words.word('dog cat bird', 2).should be == 'cat'
    end

    it 'returns the first word if no argument is given' do
      Words.word('dog cat bird').should be == 'dog'
    end
  end

  describe '#first_two' do
    it 'returns the first two words of a phrase' do
      Words.first_two('dog cat bird').should be == 'dog cat'
    end
  end

  describe '#last_two' do
    it 'returns the last two words of a phrase' do
      Words.last_two('dog cat bird').should be == 'cat bird'
    end
  end

  describe '#third' do
    it 'returns the third word of a phrase' do
      Words.third('dog cat bird').should be == 'bird'
    end
  end
end
