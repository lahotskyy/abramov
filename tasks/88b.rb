def task88b
  cond = Func.parse_yaml('./conditions.yml')
  p cond['88b']
  number = Func.try_input # Inputting a number
  number = Func.check_for_natural(number)
  for_ruby = number

  reverse_number = []
  while (number % 10).to_i.nonzero?
    reverse_number << (number % 10).to_i
    number /= 10
  end

  reverse_number.select { |i| print i }
  puts "\nВідповідь Ruby: " + for_ruby.to_s.reverse
end

task88b
