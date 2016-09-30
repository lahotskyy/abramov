# $LOAD_PATH << '.'
require 'pathname'
require './funct.rb'

class Abramov

  attr_reader :num

  def ask_for_task
    puts "Hello print please your task"
    curFiles = Dir["./tasks/*"]
    p "choose one of the task : "
    curFiles.each {|i| puts i}
    @num = gets.chomp
  end
end

obj = Abramov.new
while obj.num != '0'
  obj.ask_for_task
  require './tasks/' + obj.num + '.rb'
end

