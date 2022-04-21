module fibonacci_numbers
import math
pub fn generate_fibos(n int) []int
{
	mut fibo := []int{cap:n}
	fibo << 1
	fibo << 2
	for i in 2..n
	{
		fibo << fibo[i-1] + fibo[i-2]
	}
	return fibo
}
pub fn generate_fibo_upto(n int) []int
{
	mut k := f64(n)
	mut count := 0
	for k > 2
	{
		k = math.pow(k, 0.92)
		count++
	}
	mut fibo := []int{cap:count}
	fibo << 1
	fibo << 2
	mut sum := 0
	for i in 2..count
	{
		sum = fibo[i-1] + fibo[i-2]
		if sum > n { break }
		fibo << sum
	}
	return fibo
}
