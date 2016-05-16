module Enumerable
  def keep
    result = []
    each { |e| result << e if yield(e) }
    result
  end

  def discard
    result = []
    each { |e| result << e unless yield(e) }
    result
  end
end
