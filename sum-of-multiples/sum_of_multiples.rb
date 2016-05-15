class SumOfMultiples
  def initialize(*args)
    @multiples = args
  end

  def to(num)
    to_sum = [0]
    @multiples.each do |multiple|
      check_num = multiple
      until check_num >= num
        to_sum << check_num
        check_num += multiple
      end
    end
    to_sum.uniq.reduce(&:+)
  end
end
