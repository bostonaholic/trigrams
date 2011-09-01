require 'array'
require 'rspec'

describe Array do
  context 'congruent_chunks' do
    it 'returns a list of chunks for default size 1' do
      ['cat', 'dog', 'bird'].congruent_chunks.should be == [['cat'], ['dog'], ['bird']]
    end

    it 'returns a list of chunks which neighboring chunks share n-1 elements for a given size n' do
      ['cat', 'dog', 'bird', 'hamster'].congruent_chunks(2).should be == [['cat', 'dog'],
                                                                         ['dog', 'bird'],
                                                                         ['bird', 'hamster']]
    end

    it 'returns a list of chunks with uneven slices' do
      ['cat', 'dog', 'bird', 'hamster'].congruent_chunks(3).should be == [['cat', 'dog', 'bird'],
                                                                         ['dog', 'bird', 'hamster']]
    end

    it 'returns a list of chunks with repeated items' do
      ['cat', 'dog', 'cat'].congruent_chunks(2).should be == [['cat', 'dog'], ['dog', 'cat']]
    end
  end
end
