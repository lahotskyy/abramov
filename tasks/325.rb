def task325
  require 'prime'
  cond = Func.parse_yaml('./conditions.yml')
  p cond['325t']
  user_num = Func.nat_num
  if user_num == 1
    puts "Number 1 don't have prime divisor"
  else print 'There are all prime divisors: '
    puts (1..user_num).select { |i| (user_num % i).zero? && Prime.instance.prime?(i) }.join(', ')
  end
end

task325
