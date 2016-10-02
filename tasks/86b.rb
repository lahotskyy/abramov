def task86b
  cond = Func.parse_yaml('./conditions.yml')
  p cond['86b']
  number = Func.try_input
  number = Func.check_for_natural(number)
  Func.sum_of_digits(number)
end

task86b
