class Fib
  def fib(list = [1, 1])
    if list[-1].to_s.length == 1000
      list.length
    else
      fib(list << list[-1] + list[-2])
    end
  end
end