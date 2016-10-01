# $LOAD_PATH << '.'
require 'pathname'
require './funct.rb'

# Abramove Exercises
class Abramov
  attr_reader :num

  def ask_for_task
    puts 'Вітання! Оберіть, будь ласка, своє завдання із доступних:'
    cur_files = Dir['./tasks/*']
    cur_files.each { |i| puts i.split('./tasks/') }
    print 'Ваш варіант: '
    @num = gets.chomp
  end
end

obj = Abramov.new
while obj.num != '0'
  obj.ask_for_task
  begin
      load './tasks/' + obj.num + '.rb'
      puts 'Вправу виконано успішно! Бажаєте спробувати іншу? [y/n]'
    rescue LoadError
      puts "Вибачте, але вправа #{obj.num} відсутня.
      Спробуєте ввід ще раз? [y/n]"
    end
  gets.chomp == 'y' ? next : break
end
