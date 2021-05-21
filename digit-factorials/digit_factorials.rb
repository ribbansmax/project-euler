class DigitFactorial
  def factorial(n)
    if n == 1 || n == 0
      1
    else
      n * factorial(n - 1)
    end
  end

  def digit_factorial?(n)
    a = n.to_s.split('').map(&:to_i)
    n == a.reduce(0) do |sum, num|
      sum + factorial(num)
    end
  end

  def up_to(n = 1000000)
    i = 10
    until i > n
      puts i if digit_factorial?(i)
      i += 1
    end
  end
end

d = DigitFactorial.new

require 'pry';binding.pry