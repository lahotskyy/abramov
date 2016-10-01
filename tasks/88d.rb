def task88d
	cond = Func.parse_yaml('./conditions.yml')
  p cond['88d']
	puts "Введіть натуральне число n:"
	n = gets.chomp.to_f

	if n > 0  && (n - (n.to_i - 1)) == 1 then
		puts "Відповідь: 1#{n.to_i.to_s}1"
	else
		puts "Введене значення не є натуральним числом"
	end
end

task88d
