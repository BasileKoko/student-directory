# Exercises 8
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, hobbies: :football, country: :Taiwan, height: :"175cm"},
  {name: "Darth Vader", cohort: :november, hobbies: :tennis, country: :Sweden, height: :"195cm"},
  {name: "Nurse Ratched", cohort: :november, hobbies: :tennis, country: :Brazil, height: :"205cm"},
  {name: "Michael Corleone", cohort: :november, hobbies: :gardening, country: :Scotland, height: :"160cm"},
  {name: "Alex DeLarge", cohort: :november, hobbies: :cycling, country: :France, height: :"172cm"},
  {name: "The Wicked Witch of the West", cohort: :november, hobbies: :reading, country: :argentina, height: :"225cm"},
  {name: "Terminator", cohort: :november, hobbies: :hunting, country: :Nepal, height: :"169cm"},
  {name: "Freddy Krueger", cohort: :november, hobbies: :fishing, country: :Kenya, height: :"182cm"},
  {name: "The Joker", cohort: :november, hobbies: :swimming, country: :India, height: :"174cm"},
  {name: "Joffrey Baratheon", cohort: :november, hobbies: :coding, country: :Germany, height: :"155cm"},
  {name: "Norman Bates", cohort: :november, hobbies: :climbing, country: :USA, height: :"198"} 
]

def header
  puts "The students of Villains Academy"
  puts "-------------"
end

# 8.1 printing name with index
def print_with_index(students)
  puts "print name with index"
 students.each_with_index do |student,index|
 puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" 
  end
end

# 8.2 printing students whose name begins with N 
def print_name_begin_with_letter(students)
  puts "print name beginning with N"
  students.each do |student|
   puts "#{student[:name]} (#{student[:cohort]} cohort)" if "#{student[:name]}"[0] == "N"
  end
end


# 8.3 printing the student whose name is shorter than 12 characters
def print_name_shorter_than_12_char(students)
  puts "print name shorther than 12 characters"
  students.each do |student|
  puts " #{student[:name]} (#{student[:cohort]} cohort)" if "#{student[:name]}".size < 12
  end
end

# 8.4 printing all students using while
 def print_name_using_while(students)
 puts "print name using while"
  i = 0
  while i < students.count
    puts "#{students[i][:name]} (#{students[i][:cohort]})"
    i += 1
  end
end

 # 8.5 add more information 
 def print_name_with_more_info(students)
  puts "print name with more information"
  students.each do |student|
    puts "Name : #{student[:name]}, cohort: #{student[:cohort]}, hobbies: #{student[:hobbies]},  country_of_birth: #{student[:country]}, height: #{student[:height]}"
   end
 end

 # 8.6 using center() to align output
 def print_with_align_center(students)
   puts "align center".center(50)
   students.each do |student|
     puts "#{student[:name]} (#{student[:cohort]} cohort)".center (50) 
   end
 end
 
header()
print_with_index(students)
puts " "
print_name_begin_with_letter(students)
puts " "
print_name_shorter_than_12_char(students)
puts " "
print_name_using_while(students)
puts " "
print_name_with_more_info(students)
puts " "
print_with_align_center(students)
