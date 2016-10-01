def task330
  cond = Func.parse_yaml('./conditions.yml')
  p cond['330t']
  puts "\n\sThis program searches for the perfect numbers!!!"
  puts "\n\sInput the natural number (n)
  \bin order to find all the perfect numbers that are less than it (n):\n\s>>"
  n = gets.chomp!
  if !n.match(/[^\d]/) && n.to_i > 0
    puts "\n\sThe perfect numbers less than #{n} are: "
    result = (1...n.to_i).select { |i| Func.perf(i) }
    puts result
    puts "\n\sNone" if result.length.zero?
    puts "\n\sThanks for using our program!!!\n\sHope you like it!!!"
    puts "\sGOOD LUCK!!!"
  else
    puts "\n\sn should be the natural number...\n\se.g. 7, 100, 5832..."
    puts "\sNOT 2.5, 352.005, 152.5 ...\n\sInput the correct value, please!!!
    >>"
    task330
  end
end

task330
