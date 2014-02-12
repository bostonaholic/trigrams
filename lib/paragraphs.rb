class Paragraphs
  def self.find(text)
    text.split(/\n+/).each { |it| it.strip! }
  end
end
