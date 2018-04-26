def pet_types(owners_hash)

  pets_hash = Hash.new([])
  owners_hash.each do |key, value|
    value.each do |pet|
      pets_hash[pet] += [key]
  end
  end
  
    p pets_hash.each { |k,v| v.sort! }
  # Hash[key, value, ....]
  
  # result_hash = {}
  # unique_pets = owners_hash.values.flatten.uniq
  
  # unique_pets.each do |pet|
  #   result_hash[pet] = owners_hash.select { |owner, animals| animals.include?(pet)}.keys.sort
  # end
  
  # result_hash
  
end

puts "-------Pet Types-------"
owners_1 = {
  "yi" => ["cat"]
}
output_1 = {
  "cat" => ["yi"]
}

owners_2 = {
  "yi" => ["cat", "dog"]
}
output_2 = {
  "cat" => ["yi"],
  "dog" => ["yi"]
}

owners_3 = {
  "yi" => ["dog", "cat"],
  "cai" => ["dog", "cat", "mouse"],
  "venus" => ["mouse", "pterodactyl", "chinchilla", "cat"]
}
output_3 = {
  "dog" => ["cai", "yi"],
  "cat" => ["cai", "venus", "yi"],
  "mouse" => ["cai", "venus"],
  "pterodactyl" => ["venus"],
  "chinchilla" => ["venus"]
}

puts pet_types(owners_1) == output_1
puts pet_types(owners_2) == output_2
puts pet_types(owners_3) == output_3
