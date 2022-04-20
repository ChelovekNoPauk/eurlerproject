module prime_numbers
import math

pub fn primes(n int) []int
{
	mut array := []bool{len:n+1, cap:n+1, init:true}
	array[0] = false
	array[1] = false
	for i := 2; i < math.floor(math.sqrt(n))+1; i++
	{
		if array[i]
		{
			for j := i*i; j < n+1; j+= if i !=2 {2*i} else {i}
			{
				array[j] = false
			}
		}
	}
	return array_btoi(array)
}
