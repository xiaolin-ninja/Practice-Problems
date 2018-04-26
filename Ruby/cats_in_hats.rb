def cats_in_hats
  # cats_hash = {}
  # 100.times { |k| cats_hash[k+1] = 'off' }
  
  # cats_hash.each do |k, v|
  # i = 1
  # while i < 101
  # if k % i == 0 
  #   if cats_hash[k] == 'off'
  #     cats_hash[k] = 'on'
  #   elsif cats_hash[k] == 'on'
  #     cats_hash[k] = 'off'
  #   end
  # end
  # i += 1
  # end
  # end

  # cats_hash.select { |k, v| v == 'on' }.keys
  
  cats = Hash.new(false)
  (1..100).each do |round|
    cat_num = round
    while cat_num <= 100
    cats[cat_num] = !cats[cat_num]
    cat_num += round 
    # will keep adding round until cats_num <= 100
    end
    
    # (round..100).step(round) do |cat_num|
    #   cats[cat_num] = !cats[cat_num] 
    #   # changes it to opposite
    # end
  end
  p cats.select { |cat_num, hat| hat }.keys 
  # selects value (hat) that are true
  
end

puts "------Cats in Hats------"
puts cats_in_hats == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
