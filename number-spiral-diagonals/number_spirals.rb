class Spiral
  def sum_diagonal(l, list = [20])
    if l == 3
      1 + (list.length * 4) + list.reduce(:+)
    else
      list << (20 + list[-1] + ((list.length) * 32))
      sum_diagonal(l - 2, list)
    end
  end
end

s = Spiral.new

require 'pry';binding.pry