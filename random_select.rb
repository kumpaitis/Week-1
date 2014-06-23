def random_select(array, n)
  random_array = []
  array_length = array.length
  n.times do
    random_array.push(array[rand(array_length)])
  end
  random_array
end

