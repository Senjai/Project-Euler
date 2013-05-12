#Ruby solution for http://projecteuler.net/problem=1
#Prepared by Richard Wilson (Senjai)

multiples = Array.new

1.upto(999) do |iter| #All values LOWER than 1000.
  if iter % 3 == 0 or iter % 5 == 0 #if the iterator is a multiple of three or five
    multiples << iter #add it to the array of multiples
  end
end
puts multiples.inject(:+) #print the sum of all the multiples of three and five from 1 - 1000
