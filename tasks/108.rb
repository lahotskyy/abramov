def task108(num = 2)
  cond = Func.parse_yaml('./conditions.yml')
  p cond['108t']
  print 'Введіть n: '
  loop do
    n = gets.chomp
    break if n.to_i.to_s == n
    print 'Некоректні дані, спробуйте ввід ще раз:'
  end
  n = n.to_i
  num *= 2 while num <= n
  puts 'Найменше число виду 2^r, > n = ' + num.to_s
end

task108
