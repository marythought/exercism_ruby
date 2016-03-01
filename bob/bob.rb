class Bob
  def initialize
  end

  def hey(text)
    text = text.split("\n").pop if text.include?("\n")
    return "Fine. Be that way!" if silent?(text)
    return "Whoa, chill out!" if yelling?(text)
    return "Sure." if text[-1] == "?"
    "Whatever."
  end

  def silent?(text)
    text =~ /^\s+/ || text.empty?
  end

  def yelling?(text)
    text == text.upcase && text =~ /[a-zA-Z]/
  end
end
