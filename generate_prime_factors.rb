#Ruby solution for http://projecteuler.net/problem=3
#Prepared by Richard Wilson (Senjai)

require 'prime' #So we have to do less work

#We'll keep to our functional style of approaching these problems.

def gen_prime_factors(num, start)
  while (num >= start) do
    if (start.prime? && (num % start == 0))
      best = start
      num /= start
      puts "Prime! #{start}"
    else
      start += 2
    end
  end
  best #implicit return
end

puts gen_prime_factors(600851475143, 3)

