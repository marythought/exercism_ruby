class Pangram
  VERSION = 1

  def self.is_pangram?(str)
    return false if str.length < 26
    alphabet = ("a".."z").to_a
    alphabet == str.downcase.chars.sort.select { |f| /[a-z]/.match(f) }.uniq
  end
end
