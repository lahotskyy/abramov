def task324
  cond = Func.parse_yaml('./conditions.yml')
  p cond['324t']
  Func.beginning
  p = gets.chomp!
  puts "\n\sInput the integer q: \n\s>>"
  q = gets.chomp!
  if Func.input_integer(p, q)
    p = -p.to_i if p.to_i < 0
    q = -q.to_i if q.to_i < 0
    Func.coprime_divisors(p, q)
    Func.success
  else
    Func.failure
  end
end

task324
