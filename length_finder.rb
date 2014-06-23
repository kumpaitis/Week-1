def length_finder(input_array)
  length_array = []
  input_array.each { |elem| length_array.push(elem.length) }
  length_array
end
