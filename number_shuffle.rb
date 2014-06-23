def number_shuffle(number)
  distinct_number_array = []
  number_array = number.to_s.split("")
  length = number.to_s.length
  unique_number_count = 1
  (1..length).each do |i|
    unique_number_count *= i 
  end
  unique_number = 0
  (1..unique_number_count).each do |i|
    unique_number = number_array.shuffle.join.to_i
    while( distinct_number_array.include?(unique_number) )
      unique_number = number_array.shuffle.join.to_i
    end
    distinct_number_array.push(unique_number)
  end
  distinct_number_array.sort
end
