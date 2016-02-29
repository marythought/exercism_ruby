class Prime
  @@primes = [2, 3]

  def self.nth(x)
    fail ArgumentError if x <= 0
    result = @@primes.fetch(x - 1, nil)
    return result unless result.nil?
    test_array = @@primes.clone
    until @@primes.length == x
      num = test_array[-1] + 2
      @@primes << num if prime?(num)
      test_array << num
    end
    @@primes[-1]
  end

  def self.prime?(x)
    sq_root = Math.sqrt(x).ceil
    @@primes.each do |prime|
      return false if x.modulo(prime).zero?
      break if prime > sq_root
    end
    true
  end
end
