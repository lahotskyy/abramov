def task88c
	cond = Func.parse_yaml('./conditions.yml')
  p cond['88c']
	puts "Введіть натуральне число n: "
	n = gets.chomp.to_f
	if n.between?(1, 1000) && (n - (n.to_i - 1)) == 1 then
		puts "Відповідь: #{n.to_i.to_s.reverse}"
	elsif n >= 1000 && (n - (n.to_i - 1)) == 1 then
	 arr = n.to_i.to_s.split("")
	 puts "Відповідь: #{arr.last}#{arr[1, arr.length-2].join.to_s}#{arr.first}"
	else
	 puts "Введене значення не є натуральним числом"
	end
end

task88c
