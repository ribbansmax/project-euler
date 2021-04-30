def sum_multiples(target = 1000, m1 = 3, m2 =5)
  mod1 = (target - 1) / m1
  mod2 = (target - 1) / m2
  mod3 = (target - 1) / (m1 * m2)
  m1 * sum_to(mod1) + m2 * sum_to(mod2) - (m1 * m2) * sum_to(mod3)
end

def sum_to(n)
  (1..n).sum
end

puts sum_multiples()
