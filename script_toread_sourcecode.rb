def read_source_code
  "The content of this method will be printed when it is executed!!"
  File.readlines($0)
end
puts read_source_code
