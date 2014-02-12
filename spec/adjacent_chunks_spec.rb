require 'rspec'
require 'adjacent_chunks'

describe AdjacentChunks do
  context 'adjacent_chunks' do
    it 'returns a list of chunks for default size 1' do
      AdjacentChunks.find(['cat', 'dog', 'bird']).should be == [['cat'], ['dog'], ['bird']]
    end

    it 'returns a list of chunks which neighboring chunks share n-1 elements for a given size n' do
      AdjacentChunks.find(['cat', 'dog', 'bird', 'hamster'], 2).should be == [['cat', 'dog'],
                                                                              ['dog', 'bird'],
                                                                              ['bird', 'hamster']]
    end

    it 'returns a list of chunks with uneven slices' do
      AdjacentChunks.find(['cat', 'dog', 'bird', 'hamster'], 3).should be == [['cat', 'dog', 'bird'],
                                                                              ['dog', 'bird', 'hamster']]
    end

    it 'returns a list of chunks with repeated items' do
      AdjacentChunks.find(['cat', 'dog', 'cat'], 2).should be == [['cat', 'dog'], ['dog', 'cat']]
    end
  end
end
