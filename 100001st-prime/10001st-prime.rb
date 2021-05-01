class NthPrime
  def increment_p(primes)
    i = primes[-1]
    while primes.any? { |prime| i % prime == 0 }
      i += 2
    end
    primes << i
  end

  def nth_prime(n = 10001)
    p = [2,3]
    until p.length == n
      increment_p(p)
    end
    p[-1]
  end
end