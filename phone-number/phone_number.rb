class PhoneNumber
  attr_reader :number

  def initialize(number)
    @raw_number = number
    @number = clean_number
  end

  def area_code
    @number[0..2]
  end

  def to_s
    "(#{area_code}) #{@number[3..5]}-#{@number[6..-1]}"
  end

  private

  def clean_number
    num = @raw_number.gsub(/[\-\.\(\) ]+/, '')
    valid_nums = no_letters?(num)
    return num if num.length == 10 && valid_nums
    return num [1..-1] if num.length == 11 && valid_nums && num[0] == "1"
    "0000000000"
  end

  def no_letters?(number)
    (number =~ /[a-zA-Z]+/).nil?
  end
end
