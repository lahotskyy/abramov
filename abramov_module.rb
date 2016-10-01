module Abramov
  def nat_num
    print 'Please insert natural number: =>'
      user_num = gets.chomp.to_f
        if user_num <= 0 || (user_num % 1).nonzero?
          puts 'Number that you insert is not a natural number! Please try again.'
          nat_num
        else
          @user_num = user_num
        end
  end

    # Дано натуральне число n. Отримати всі його натуральні дільники
  def ex224
    puts "There are all natural divisors: #{(1..@user_num).select { |i| (@user_num % i).zero? }.join(', ')}"
  end

    # Дано натуральне число n. Отримати всі прості дільники цього числа.
  def ex325
    require 'prime'
      if @user_num == 1
        puts "Number 1 don't have prime divisor"
      else print 'There are all prime divisors: '
        puts (1..@user_num).select { |i| (@user_num % i).zero? && Prime.instance.prime?(i) }.join(', ')
      end
  end

    # Дано натуральне число n. Серед чисел (1,..,n) знайти всі такі, запис
    # яких співпадає з останніми цифрами запису їх квадрату (наприклад,
    # 6**2 = 36, 25**2= 625 і т.д.).
  def ex561
    print "The required list of automorphic numbers in range from 1 to #{@user_num.to_i}: "
    puts (1..@user_num).select { |x| x % 10**(Math.log10(x) + 1).floor == (x**2) % 10**(Math.log10(x) + 1).floor }.join(', ')
  end
end
