class Grains
  class << self; attr_accessor :squares end
  @squares = { 1 => 1, 2 => 2 }

  def self.square(num)
    return @squares[num] unless @squares[num].nil?
    (@squares.keys.sort[-1] + 1).upto(num) do |i|
      @squares[i] = @squares[i - 1] * 2
    end
    @squares[num]
  end

  def self.total
    square(64)
    @squares.values.reduce(&:+)
  end
end
