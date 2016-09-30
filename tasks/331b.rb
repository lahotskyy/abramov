def task331b
  cond = Func.parse_yaml('./conditions.yml')
  p cond['331b']
  p 'Введіть n: '
  loop do
    n = gets.chomp
    break if (n.to_i.to_s == n) && (n.to_i >= 3)
    print 'Некоректні дані, спробуйте ввід ще раз:'
  end
  n = n.to_i
  (1...n).each do |n1|
    next unless Func.int_sqrt(n1)
    remain = n - n1
    break if remain <= 0
    (1..remain).each do |n2|
      next unless Func.int_sqrt(n2)
      n3 = remain - n2
      next unless Func.int_sqrt(n3)
      # printing out sum of sqrt
      print "#{n} = #{Math.sqrt(n1)}^2 + #{Math.sqrt(n2)}^2 + "
      print "#{Math.sqrt(n3)}^2 \n"
    end
  end
end

task331b
