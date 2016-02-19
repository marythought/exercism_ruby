class Squares
  VERSION = 2

  def initialize(num)
    @num = num
  end

  def square_of_sum
    return 0 if @num == 0
    sum = 1.upto(@num).reduce(&:+)
    sum * sum
  end

  def sum_of_squares
    sum = 0
    return sum if @num == 0
    1.upto(@num) do |num|
      sum += num * num
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
