# ex324
#     There are the integers p and q.
#     Get all the divisors of p that are coprime with q

def beginning
  puts "\n\sThis program searches for all the divisors of the integer p
  \bthat are coprime with the integer q..."
  puts "\n\sInput the integer p: \n\s>>"
end

def success
  puts "\n\sThanks for using our program!!!\n\sHope you like it!!!"
  puts "\sGOOD LUCK!!!"
end

def failure
  puts "\n\sInput the correct value of the integers p and q, please!!!"
  puts "\sp and q should be integers...\n\se.g. 7, 100, 5832...
  NOT 2.5, 352.005, -152.5 ..."
  output
end

def coprime_divisors(p, q)
  arr = []
  (1..p.to_i).each do |i|
    arr.push(i) if (p.to_i % i).zero?
  end
  puts "\n\sAll the divisors of #{p} that are coprime with #{q} are: \n"
  arr.select! { |i| i.to_i.gcd(q.to_i) == 1 }
  puts arr.empty? ? 'None' : arr
end

def input_integer(p, q)
  p.match(/^[-+]?\d*$/) && q.match(/^[-+]?\d*$/)
end

def output
  beginning
  p = gets.chomp!
  puts "\n\sInput the integer q: \n\s>>"
  q = gets.chomp!
  if input_integer(p, q)
    p = -p.to_i if p.to_i < 0
    q = -q.to_i if q.to_i < 0
    coprime_divisors(p, q)
    success
  else
    failure
  end
end
output
