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
    2.upto(@limit) do |i|
      multiplier = 2
      product = i * multiplier
      while product <= @limit
        @hash[product] = "not prime"
        multiplier += 1
        product = i * multiplier
      end
    end
    @hash = @hash.select { |_key, value| value == "prime" }
    @hash.keys
  end
end
