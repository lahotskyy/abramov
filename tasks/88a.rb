def task88a
  cond = Func.parse_yaml('./conditions.yml')
  p cond['88a']
  number = Func.try_input # Inputting a number
  number = Func.check_for_natural(number)

  answer = false
  answer = Func.find_3_in_square(number.to_i, answer)
  if answer
    puts "Цифра '3' присутня в числі #{number.to_i**2}"
  else
    puts "Цифра '3' не присутня в числі #{number.to_i**2}"
  end

  puts 'Відпоідь Ruby:'
  answ = (number.to_i**2).to_s.include? '3'
  if answ
    puts "Цифра '3' присутня в числі #{number.to_i**2}"
  else
    puts "Цифра '3' не присутня в числі #{number.to_i**2}"
  end
end

task88a
