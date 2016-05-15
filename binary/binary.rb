# - The rightmost digit gets multiplied by 10^0 = 1
# - The next number gets multiplied by 10^1 = 10
# - ...
# - The * n*th number gets multiplied by 10^*(n-1)*.
# - All these values are summed.
class Binary
  VERSION = 1

  def initialize(number_string)
    raise ArgumentError, "input must contain only 0 or 1" if number_string =~ /[^01]+/
    @num_str = number_string
  end

  def to_decimal
    to_sum = []
    num_arr = @num_str.chars
    num_arr.length.times do |i|
      rightmost = num_arr.pop.to_i
      to_sum << rightmost * (2**i)
    end
    to_sum.reduce(&:+)
  end
end
