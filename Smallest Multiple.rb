#Ruby solution for http://projecteuler.net/problem=5
#Prepared by Richard Wilson.
require 'benchmark'
#Let's try a brute force method, not sure if this will be timely.
#We can however short circuit the evaluation. We dont need to test 1 because any number
#divided by 1 is itself.
Benchmark.bm do |x|
  x.report("Time Elapsed: ") do
    numbers = (2..20).to_a #Array from 2 to 20 inclusive.

    found = false
    current_number = 20 #start with 20. 
    status = false
    until found do
      numbers.each do |x|
        status = current_number % x == 0
        break if status == false
      end

      if status
        found = true
      else
        current_number += 2 #dont test odd numbers, must be even (divisable by 2)
      end
    end
    puts "Smallest Multiple: #{current_number.to_s}"
  end
end
#After running the benchmark test, this solution takes 57 seconds to find the solution.
#Which is horrible inefficient, I shall have to figure out something better.