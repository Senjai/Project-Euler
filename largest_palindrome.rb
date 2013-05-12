#Ruby solution for http://projecteuler.net/problem=3
#Prepared by Richard Wilson (Senjai)

#Last euler exercise for the day.
#lets try and solve for 9009 using two two digit numbers first.

n1, n2 = 100, 100 #start at 100x100
max = 999 #the limit for values of n1, n2.
best = 0
#Let's try brute force:

def is_palindrome?(n)
	t = n.to_s #convert to string
	return t == t.reverse #return true if the number is equal to itself in reverse.
end


while (n1 <= max) do
	current = n1 * n2
	best = current if is_palindrome?(current) && current > best #test if its a palindrome first, so we can short-circut the current > best test.
	if n2 == max
		n1 += 1
		n2 = 100
	else
		n2 += 1
	end
end

puts "Highest is #{best}"

