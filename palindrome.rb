def palindrome?(sentence)
  flipped_sentence = sentence.downcase.gsub(/\s+/, "").reverse
  sentence = sentence.downcase.gsub(/\s+/, "")
  puts flipped_sentence
  return true if sentence == flipped_sentence
  return false
end
