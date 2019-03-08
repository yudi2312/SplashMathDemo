class String

  def formatize
    self.downcase.gsub(' ', '_')
  end

  def deformatize
    self.gsub('_', ' ')
  end

end