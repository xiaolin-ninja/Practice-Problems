def anagram?(a, b)
end

def first_anagram?(a, b)
	# run time:
	# split string = O(n)
	# permute = O(n!)
	# check if b in a = O(n)
	perms = a.chars.permutation.to_a
	if perms.include?(b):
		return true
	return false
end


def second_anagram?(a, b)
	a, b = a.chars, b.chars

	a.each do |letter|
		idx = b.find_index(letter)
		return false unless idx
		b.slice!(idx)
	end

	b.empty?
end