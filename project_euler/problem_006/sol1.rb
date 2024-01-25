#Project Euler Problem 6: #https://projecteuler.net/problem=6

#Sum square difference

#The sum of the squares of the first ten natural numbers #is,
#    1^2 + 2^2 + ... + 10^2 = 385
#The square of the sum of the first ten natural numbers #is,
#    (1 + 2 + ... + 10)^2 = 55^2 = 3025
#Hence the difference between the sum of the squares of #the first ten
#natural numbers and the square of the sum is 3025 - 385 = 2640.
#Find the difference between the sum of the squares of the first one
#hundred natural numbers and the square of the sum.

def solution(num=10)
	x = 1
	y = 1
	result = 1
	gap = 3
	while y < num
  		x += gap
  		gap += 2
  		y += 1
  		result += x
	end
	r_n_pow2_plus_n_pow2 = result
	r_sum_n_pow2 = (((num / 2) + 0.5) * num) ** 2

	r_sum_n_pow2 - r_n_pow2_plus_n_pow2
end

answer = solution()
p answer
