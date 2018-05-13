require 'benchmark'


def first_anagram?(a, b)
	# run time:
	# O(n * n!) runtime
	perms = a.chars.permutation.to_a
	perms.map! { |perm| perm.join("") }
	return true if perms.include?(b)
	return false
end

p first_anagram?('racecar', 'crrceaa')

puts Benchmark.measure {first_anagram?('racecar', 'crrcea')}

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

p second_anagram?('racecar', 'crrceaa')

puts Benchmark.measure {second_anagram?('racecar', 'crrcea')}

def third_anagram?(a, b)
	# O(n) run time
	return a.chars.sort == b.chars.sort
end

p third_anagram?('racecar', 'crrceaa')

puts Benchmark.measure {third_anagram?('racecar', 'crrcea')}

def fourth_anagram?(a, b)
	# O(n) runtime
	a, b = a.chars, b.chars
	letters = a.each_with_object(Hash.new(0)) { |letter, letters| letters[letter] += 1}
	b.each { |letter| letters[letter] -= 1}

	return letters.values.max == 0
end

p fourth_anagram?('racecar', 'crrceaa')

puts Benchmark.measure {fourth_anagram?('racecar', 'crrcea')}