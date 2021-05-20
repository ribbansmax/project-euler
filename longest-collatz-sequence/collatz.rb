class Collatz
  def step(n)
    if n.even?
      n / 2
    else
      n * 3 + 1
    end
  end
end