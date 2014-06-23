def non_duplicated_values(values)
  values.delete_if{ |val| values.count(val) > 1 }
  values
end
