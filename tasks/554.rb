def task554
  cond = Func.parse_yaml('./conditions.yml')
  p cond['554t']
  n = gets.chomp.to_i
  pyth_exist = false
  pyth_arr = []
  (1..n).each do | c |
     (1..c).each do | b |
      (1..b).each do | a |
        if a**2 + b**2 == c**2
          pyth_arr.push(a, b, c)
          pyth_exist = true
        end
      end
    end
  end
  pyth_exist ? Func.pyth_print(pyth_arr) : Func.pyth_not_exist
end

task554
