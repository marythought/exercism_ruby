class Series
  def initialize(string)
    @string = string.chars
  end

  def slices(num)
    raise ArgumentError, "slice size must be smaller than series length" if num > @string.length
    @string.each_cons(num).map { |a| a.map(&:to_i) }
  end
end
