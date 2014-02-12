class Sentences
  def self.find(text)
    text.split(/[.?!(\n+)](?=\s+|$)/).reject(&:empty?).each { |it| it.strip! }
  end
end
