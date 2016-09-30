def task322
  cond = Func.parse_yaml('./conditions.yml')
  p cond['322t']
  max_dividers = 1 # counts dividers of a number
  answer = 0 # answer
  (1..100_00).each do |var|
    divide = var / 2
    count = 1 # As self-division counts
    while divide.nonzero?
      count += 1 if (var % divide).zero?
      divide -= 1
    end
    next if count < max_dividers
    max_dividers = count
    answer = var
  end

  puts "Число з найбільшою сумуою дільників: #{answer}"
end

task322
