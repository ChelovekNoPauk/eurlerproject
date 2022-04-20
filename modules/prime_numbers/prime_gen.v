module prime_numbers



fn array_btoi(source []bool) []int
{
	count_true := source.filter(it).len
	mut res := []int{len: count_true, cap: count_true}
	mut k := 0
	for i, v in source
	{
		if v
		{
			res[k] = i
			k++
		}
	}
	return res
}