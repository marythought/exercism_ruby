class Phrase
  VERSION = 1

  def initialize(text)
    @text = text
    @hashed = false
    @word_hash = {}
  end

  def word_count
    return @word_hash if @hashed
    word_array.map { |word| clean(word) }.each do |word|
      next if word.empty?
      @word_hash[word] = @word_hash[word].nil? ? 1 : @word_hash[word] + 1
    end
    @hashed = true
    @word_hash
  end

  def word_array
    @text =~ /\S+,\S+/ ? @text.split(",") : @text.split
  end

  def clean(word)
    word = word.gsub(/[^\w\d']/, "").downcase
    word =~ /'.+'/ ? word[1...-1] : word
  end
end
