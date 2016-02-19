class Integer
  VERSION = 1

  def to_roman
    letters = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
                5 => 'V', 4 => 'IV', 1 => 'I' }
    return letters[self] if letters.key?(self)
    num = self
    letters.sort_by { |k, _v| k }.reverse!
    letters.keys.reduce('') do |result, key|
      while num / key > 0 && num > 0
        result += letters[key]
        num -= key
      end
      result
    end
  end
end
