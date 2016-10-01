def task332
  cond = Func.parse_yaml('./conditions.yml')
  p cond['332t']
  puts "Введіть натуральне число n:"
  n = gets.chomp.to_f
  if n > 0  && (n - (n.to_i - 1)) == 1 then
    q = Math.sqrt(n)
    for x in 0..q do x += 1
      for y in 0..q do y += 1
        for z in 0..q do z += 1
          for t in 0..q do t += 1
            if x*x + y*y + z*z + t*t == n then
              puts "x = #{x}, y = #{y}, z = #{z}, t = #{t}"
            end
          end
        end
      end
    end
  else
    puts "Введене значення не є натуральним числом"
  end
end

task332
