def task86a
  cond = Func.parse_yaml('./conditions.yml')
  p cond['86a']
  n = gets.chomp
  Func.digits(n)
end

task86a
