import fibonacci_numbers

fn main()
{
	// Given max fibo number
	n := 4_000_000
	even_fibos := fibonacci_numbers.generate_fibo_upto(n).filter(it % 2 == 0)
	mut sum := 0
	for i in even_fibos
	{
		sum += i
	}
}
