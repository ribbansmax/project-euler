class PrimeFactor
  def largest_prime_factor(n)
    n = n / 2 if n.even?
    factor(n)
  end

  def factor(n, factors = [], primes = [3])
    if n % primes[-1] == 0
      i = primes[-1]
      factors << i
      n = n / i
      while primes.any? { |prime| i % prime == 0 }
        i += 2
      end
      primes << i
      factor(n, factors, primes)
    elsif primes[-1] >= n
      factors[-1] || n
    else
      i = primes[-1]
      while primes.any? { |prime| i % prime == 0 }
        i += 2
      end
      primes << i
      factor(n, factors, primes)
    end
  end
end

require 'pry';binding.pry