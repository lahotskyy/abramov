def task108(num = 2)
  cond = Func.parse_yaml('./conditions.yml')
  p cond['108t']
  p 'Введіть n: '
  while n = gets.chomp
    break if n.to_i.to_s == n
    puts "некоректні дані"
  end
  n = n.to_i
  num *= 2 while num <= n
  print 'Найменше число виду 2^r, > n = '
  puts num
end

task108
print "\n\n\n"