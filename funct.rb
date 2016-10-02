require 'yaml'

# All needed functions
module Func
  def self.int_sqrt(numb)
    doubl = Math.sqrt(numb)
    integ = doubl.to_int
    doubl == integ
  end

  def self.parse_yaml(file)
    YAML.load_file(file)
  end

  def self.try_input # Inpution number
    print 'Введіть n: '
    gets.chomp
  end

  def self.check_for_natural(num) # Check if number is natural
    while num.to_i.to_s != num
      puts 'Введене число не є натуральним! Будь ласка, спробуйте ще раз.'
      num = Func.try_input
    end
    return num.to_i
  end

  def self.find_3_in_square(num, answ) # Find digit '3' in square of number
    num **= 2 # Making a square of a number
    while (num % 10).to_i.nonzero?
      if num % 10 == 3
        answ = true
        break
      end
      num /= 10
    end
    answ
  end

  def self.perf(num)
    sum = 0
    (1...num).each do |i|
      sum += i if (num % i).zero?
    end
    return true if sum == num
  end

  def self.nat_num
    print 'Please insert natural number: =>'
    user_num = gets.chomp.to_f
    if user_num <= 0 || (user_num % 1).nonzero?
      puts 'Number that you insert is not a natural number! Please try again.'
      nat_num
    else
      @user_num = user_num
    end
  end

  def self.pyth_print(pyth_arr)
    count = pyth_arr.length / 3
    puts "The Pythagoras numbers are:"
    (1..count).each do | i |
      puts "a = #{pyth_arr[3*i-3]}, b = #{pyth_arr[3*i-2]}, c = #{pyth_arr[3*i-1]}"
    end
    puts "Count of Pythagoras numbers are: #{count}."
  end

  def self.pyth_not_exist
    puts "The Pythagoras numbers don\'t exist."
  end

  def self.digits(n)
    count = n.to_s.size
    puts "The number have #{count} digits."
  end

  def self.sum_of_digits(n)
    sum = n.scan(/./).inject(0){|sum, x| sum + x.to_i}
    puts "Sum of digits is #{sum}."
  end
end
