class PrimeFactors
  def self.for(num)
    primes = []
    possible_factor = 2
    max = num
    while possible_factor <= max
      quotient, remainder = max.divmod(possible_factor)
      while remainder == 0
        primes << possible_factor
        max = quotient
        quotient, remainder = quotient.divmod(possible_factor)
      end
      possible_factor += 1
    end
    primes
  end
end
