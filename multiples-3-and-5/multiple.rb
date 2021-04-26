def sum_multiples(target = 10, m1 = 3, m2 =5)
  mod1 = (target - 1) / m1
  mod2 = (target - 1) / m2
  mod3 = (target - 1) / (m1 * m2)
  add_multiples(mod1, m1) + add_multiples(mod2, m2) - add_multiples(mod3, (m1 * m2))
end

def add_multiples(times, number, sum = 0)
  if times == 0
    sum
  else
    sum += times * number
    add_multiples(times - 1, number, sum)
  end
end

puts sum_multiples()
