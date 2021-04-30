require 'prime'
def smallest_multiple(n = 20)
  primes = primes_til(n)
  primes.to_a.inject(1) do |product, n|
    product * (n[0] ** n[1])
  end
end

def primes_til(n, h = Hash.new(0))
  if n == 1
    h
  else
    prime_factors = n.prime_division
    prime_factors.each do |factor|
      h[factor[0]] = factor[1] if factor[1] > h[factor[0]]
    end
    primes_til(n - 1, h)
  end
end

require 'pry';binding.pry