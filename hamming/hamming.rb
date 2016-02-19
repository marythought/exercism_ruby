class Hamming
  VERSION = 1
  def self.compute(string1, string2)
    fail ArgumentError if string1.length != string2.length
    count = 0
    string1.length.times do |i|
      count += 1 if string1[i] != string2[i]
    end
    count
  end
end
