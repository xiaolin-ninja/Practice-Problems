def anagram?(a, b)
end

def first_anagram?(a, b)
	# run time:
	# O(n * n!) runtime
	perms = a.chars.permutation.to_a
	if perms.include?(b):
		return true
	return false
end


def second_anagram?(a, b)
	# O(n^2) runtime
	a, b = a.chars, b.chars

	a.each do |letter|
		idx = b.find_index(letter)
		return false unless idx
		b.slice!(idx)
	end

	b.empty?
end

def third_anagram?(a, b)
	# O(n) run time
	return a.chars.sort == b.chars.sort
end

def fourth_anagram(a, b)
	# O(n) runtime
	a, b = a.chars, b.chars
	letters = a.each_with_object(Hash.new(0)) { |letter, letters| letters[letter] += 1}
	b.each { |letter| letters[letter] -= 1}

	return letters.values.max == 0
end