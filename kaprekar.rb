def kaprekar?(k)
  k_sq = (k * k).to_s
  k_sq_length = k_sq.length
  div_index = k_sq_length / 2
  sum = k_sq[0 .. div_index - 1].to_i + k_sq[div_index .. k_sq_length - 1].to_i
  return true if sum == k
  return false
end

