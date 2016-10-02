def task554
  cond = Func.parse_yaml('./conditions.yml')
  p cond['554t']
  number = Func.try_input
  number = Func.check_for_natural(number)
  pyth_exist = false
  pyth_arr = []
  (1..number).each do |c|
    (1..c).each do |b|
      (1..b).each do |a|
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
