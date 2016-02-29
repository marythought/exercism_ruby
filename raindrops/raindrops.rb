require 'Prime'

class Raindrops
  VERSION = 1

  def self.convert(num)
    result = ""
    factors = Prime.prime_division(num).flatten
    result += "Pling" if factors.include?(3)
    result += "Plang" if factors.include?(5)
    result += "Plong" if factors.include?(7)
    result == "" ? num.to_s : result
  end
end
