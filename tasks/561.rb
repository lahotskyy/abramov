def task561
  cond = Func.parse_yaml('./conditions.yml')
  p cond['561t']
  user_num = Func.nat_num
  print "The required list of automorphic numbers in range from 1 to #{user_num.to_i}: "
  puts (1..user_num).select { |x| x % 10**(Math.log10(x) + 1).floor == (x**2) % 10**(Math.log10(x) + 1).floor }.join(', ')
end

task561
