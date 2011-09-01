class Hash

  def random_key
    self.keys[rand(self.size)]
  end
end
