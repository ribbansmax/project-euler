class SumSquare
  def sum_square_difference(n = 100)
    squared_sum(n) - sum_of_squares(n)
  end

  def squared_sum(n)
    s = (1..n).reduce(:+)
    s * s
  end
  
  def sum_of_squares(n)
    (1..n).inject(0) do |sum, m|
      sum + m * m
    end
  end
end

require 'pry';binding.pry