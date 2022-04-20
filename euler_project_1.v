import prime_numbers
import math
fn main()
{
	// Выписать все числа меньше N, которые делятся на OR(x1,x2,x3,x4...)
	//Given N and OR array:
	n := 1000
	divisors := [3, 5]
	//----
	to_exclude := prime_numbers.primes(n)
	mut target := []int{len:n-to_exclude.len-2}
	unsafe { target.flags.set(.noshrink | .noslices) }
	mut j := 0
	for i in 4..n
	{
		if i !in to_exclude
		{
			target[j] = i
			j++
		}
	}
	mut indicies := []int{ cap:int(math.floor(target.len/2)) }
	mut result := []int{}
	for divisor in divisors
	{
		for i, v in target
		{
			if v % divisor == 0
			{
				result << v
				indicies << i
			}
		}
		for i in indicies.reverse()
		{
			target.delete(i)
		}
		indicies.clear()
	}
	result.reverse_in_place()
	result << divisors.reverse()
	result.reverse_in_place()
	mut sum := 0
	for i in result
	{
		sum += i
	}
	dump(sum)
	
}