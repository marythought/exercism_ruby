class Year
  VERSION = 1

  def self.leap?(year)
    return true if year.modulo(100).zero? && year.modulo(400).zero?
    return false if year.modulo(100).zero? || year.modulo(4) > 0
    true
  end
end
