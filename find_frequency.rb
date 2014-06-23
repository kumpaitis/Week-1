def find_frequency(sentence, word)
  sentence.split(" ").count { |elem| elem.casecmp(word) == 0 }
end
