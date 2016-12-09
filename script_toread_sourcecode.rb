def read_source_code
  filename = $0
   "The content of this method will be printed when it is executed!!"
  File.readlines(filename)
end
puts read_source_code
