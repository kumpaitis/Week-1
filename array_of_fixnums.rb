def array_of_fixnums?(array)
  array.each{ |elem| return false if !elem.is_a?(Integer)}
  return true
end
