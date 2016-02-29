class Complement
  VERSION = 3

  def self.of_dna(nucleotide_str)
    complements = { 'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U' }
    result = nucleotide_str.chars.map do |char|
      fail ArgumentError if complements[char].nil?
      complements[char]
    end.join
    result
  end
end
