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
end
