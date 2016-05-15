class School
  VERSION = 1
  attr_reader :to_h

  def initialize
    @to_h = {}
  end

  def add(student, grade)
    if @to_h.key?(grade)
      @to_h[grade] << student
      @to_h[grade].sort!
    else
      @to_h[grade] = [student]
      @to_h = @to_h.sort.to_h
    end
  end

  def grade(level)
    @to_h[level].nil? ? [] : @to_h[level]
  end
end
