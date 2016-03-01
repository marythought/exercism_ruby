class Sieve
  def initialize(limit)
    @limit = limit
    @hash = populate_hash
  end

  def populate_hash
    hash = {}
    2.upto(@limit) do |i|
      hash[i] = "prime"
    end
    hash
  end

  def primes
    @hash.each do |key, value|
      next unless value == "prime"
      multiplier = 2
      product = key * multiplier
      while product <= @limit
        @hash[product] = "not prime"
        multiplier += 1
        product = key * multiplier
      end
    end
    @hash = @hash.select { |_key, value| value == "prime" }
    @hash.keys
  end
end
