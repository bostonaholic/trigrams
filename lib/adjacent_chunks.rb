class AdjacentChunks
  def self.find(ary, size=1)
    ary.each_with_index.map do |item, index|
      chunk = ary.slice(index, size)
      chunk if chunk.length == size
    end.compact
  end
end
