def task86a
  cond = Func.parse_yaml('./conditions.yml')
  p cond['86a']
  number = Func.try_input
  number = Func.check_for_natural(number)
  Func.digits(number)
end

task86a
