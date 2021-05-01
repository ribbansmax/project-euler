class SumPrime
  def increment_p(primes)
    i = primes[-1]
    while primes.any? { |prime| i % prime == 0 }
      i += 2
    end
    primes << i
  end

  def sum_prime(n = 10)
    p = [2,3]
    until p[-1] > n
      increment_p(p)
    end
    p[0..-2].sum
  end
end

s = SumPrime.new

puts s.sum_prime
puts s.sum_prime(2000000)
