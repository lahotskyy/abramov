puts "\n\s\sThis program searches for the prime numbers
\sless than the natural number n (n >= 2)"
puts "\susing the method called the sieve of Eratosthenes !!!"
def task557
  puts "\n\s\sInput n to get the result:\n\s\s>>"
  n = gets.chomp
  if !n.match(/[^\d]/) && n.to_i >= 2
    n = n.to_i
    puts "\n\s\sThe prime numbers less than #{n} are:\n"
    arr = (2...n).to_a
    (2..n / 2).each do
      arr.delete_if { |i| i != arr.first && (i % arr.first).zero? }
      puts arr.first unless arr.first.nil?
      arr.shift
    end
    puts "\n\sThanks for using our program!!!\n\sHope you like it!!!"
    puts "\sGOOD LUCK!!!"
  else
    puts "\n\sn should be the natural number..."
    puts "\se.g. 7, 100, 5832...\n\sNOT 2.5, 352.005, 152.5 ...
    \bMake sure n >= 2"
    puts "\n\n\s\sInput the correct value, please!!!"
    task557
  end
end

task557
