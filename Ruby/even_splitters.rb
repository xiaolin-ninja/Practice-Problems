def even_splitters(string)
  #
 string.chars.uniq.select do |char|
    split_str = string.split(char)
    split_str.delete("")
    split_str.all? { |el| el.size == split_str[0].size }
    end
  #
end

puts "-----Even Splitters----"
puts even_splitters("") == []
puts even_splitters("t") == ["t"]
puts even_splitters("jk") == ["j", "k"]
puts even_splitters("xoxo") == ["x", "o"]
puts even_splitters("banana") == ["b","a"]
puts even_splitters("mishmash") == ["m","h"]
