def number_counting_seq(n)
  return "" if n <= 0
  seq = "1"
  
(n-1).times do
    seq = gen_next(seq)
  end

  seq
end

def gen_next(prev_seq)
  next_seq = ""
  count = 1
  
  prev_seq.chars.each_index do |idx|
    if prev_seq[idx] == prev_seq[idx + 1]
      count += 1
    else
      next_seq += "#{count}#{prev_seq[idx]}"
      count = 1
    end
  end
  
  next_seq
end


puts "-------Number Counting Sequence-------"
puts number_counting_seq(0) == ""
puts number_counting_seq(1) == "1"
puts number_counting_seq(2) == "11" # one 1 above
puts number_counting_seq(3) == "21" # two 1s above
puts number_counting_seq(5) == "111221" #the last sequence was one 1, one 2, and two 1s: "1211"
puts number_counting_seq(8) == "1113213211"
puts number_counting_seq(10) == "13211311123113112211"