def read_source_code
  "The content of this method will be printed when it is executed!!"
  # $0 is used to retrieve the file name script_toread_sourcecode.rb
  # File.readlines() is the syntax for reading a file
  File.readlines($0)
end
puts read_source_code
