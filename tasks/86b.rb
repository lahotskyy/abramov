def task86b
  cond = Func.parse_yaml('./conditions.yml')
  p cond['86b']
  n = gets.chomp
  Func.sum_of_digits(n)
end

task86b
