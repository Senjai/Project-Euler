#Ruby solution for http://projecteuler.net/problem=2
#Prepared by Richard Wilson (Senjai)

#Let's do this in a few functions :)
def fib_up_to(number) # Return an array of fibonacci numbers up to number\
  n1, n2 = 1, 2 #start with the first two numbers being 1 and 2 as per the guideline
  fib_numbers = [n1] #To hold our array of numbers, add n1 for the start of the sequence
  #n2 will always be the larger value, so it will be our condition.
  while n2 <= number do 
    #Push n2 in now.
    fib_numbers.push(n2)
    #n2 becomes n1 + n2 because a fibonacci number is the sum of the two previous numbers.
    #n1 becomes the old version of n2.
    n1, n2 = n2, n1+n2
  end
  fib_numbers #implicit return of the array
end

def strip_odd_values(arr_of_numbers) #take an array of numbers and remove all odd numbers
  result = arr_of_numbers.collect {|num| num if num % 2 == 0}
  result.compact! #remove nul values from collect
end

#Let's use these functions to get our array, and we'll use inject to sum the elements.
puts strip_odd_values(fib_up_to(4_000_000)).inject {|sum, val| sum + val} #long form of inject(:+) for fun