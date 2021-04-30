def sum_even_fib_until(stop = 4000000, sum = 2, list = [1, 2])
  if list[-1] + list[-2] > stop
    sum
  else
    next_fib = list[-1] + list[-2]
    sum += next_fib if next_fib.even?
    list << next_fib
    sum_even_fib_until(stop, sum, list)
  end
end

puts sum_even_fib_until()