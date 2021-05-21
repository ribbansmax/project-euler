class DigitPower
  def digit_power?(n, p = 5)
    a = n.to_s.split('').map(&:to_i)
    n == a.reduce(0) do |sum, num|
      sum + num ** p
    end
  end

  def all_digits(n)
    i = 2
    until i > n
      puts i if digit_power?(i)
      i += 1
    end
  end
end

d = DigitPower.new

require 'pry';binding.pry