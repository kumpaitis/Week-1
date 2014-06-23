def sort_string(string)
  delim = ' '
  string.split(delim).sort_by{ |elem| elem.length }.join(delim)
end
