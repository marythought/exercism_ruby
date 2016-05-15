class RunLengthEncoding
  VERSION = 1

  def self.encode(input)
    input = input.chars
    stack = [input.shift]
    result = ""
    loop do
      if input[0] == stack.last || stack.empty?
        return result if input.empty?
      elsif stack.length == 1
        result += stack.pop
      else
        result += (stack.length.to_s + stack.last)
        stack = []
      end
      stack << input.shift
    end until input.empty?
    result
  end

  def self.decode(input)
    input = input.chars
    number_stack = []
    result = ""
    input.length.times do
      if input[0] =~ /[0-9]/
        number_stack << input.shift
      else
        number_stack = [1] if number_stack.join.to_i == 0
        letter = input.shift
        result += letter * number_stack.join.to_i
        number_stack = []
      end
    end
    result
  end
end
