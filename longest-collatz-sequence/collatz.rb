class Collatz
  def max_length(i)
    (1..i).max_by do |j|
      length(j)
    end
  end

  def length(n, l = 1)
    if n == 1
      l
    else
      length(step(n), l + 1)
    end
  end

  def step(n)
    if n.even?
      n / 2
    else
      n * 3 + 1
    end
  end
end