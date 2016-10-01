def task224
  cond = Func.parse_yaml('./conditions.yml')
  p cond['224t']
  user_num = Func.nat_num
  puts "There are all natural divisors:#{(1..user_num).select { |i| (user_num % i).zero? }.join(', ')}"
end

task224
