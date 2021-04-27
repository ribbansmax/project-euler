class PrimeFactor
  def largest_prime_factor(n)
    n = n / 2 if n.even?
    factor(n)
  end

  def factor(n, factors = [], primes = [3])
    if n % primes[-1] == 0
      factors << primes[-1]
      n = n / primes[-1]
      factor(n, factors, increment_p(primes))
    elsif primes[-1] >= n
      factors[-1] || n
    else
      factor(n, factors, increment_p(primes))
    end
  end

  def increment_p(primes)
    i = primes[-1]
    while primes.any? { |prime| i % prime == 0 }
      i += 2
    end
    primes << i
  end
end

require 'pry';binding.pry