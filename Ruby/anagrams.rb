def anagram?(a, b)
end

def first_anagram?(a)
	# run time:
	# split string = O(n)
	# permute = O(n!)
	a.chars.permutation.to_a
end


def second_anagram?(a, b)