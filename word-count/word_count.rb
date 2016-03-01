class Phrase
  attr_accessor :word_count
  VERSION = 1

  def initialize(text)
    @text = text
    @word_count ||= count
  end

  def count
    word_count = Hash.new(0)
    word_array.map { |word| clean(word) }.each do |word|
      next if word.empty?
      word_count[word] += 1
    end
    word_count
  end

  def word_array
    @text =~ /\S+,\S+/ ? @text.split(",") : @text.split
  end

  def clean(word)
    word = word.gsub(/[^\w\d']/, "").downcase
    word =~ /'.+'/ ? word[1...-1] : word
  end
end
