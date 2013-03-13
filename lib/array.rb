class Array

  def congruent_chunks(size = 1)
    self.each_with_index.map do |item, index|
      chunk = self.slice(index, size)
      chunk if chunk.length == size
    end.compact
  end
end
