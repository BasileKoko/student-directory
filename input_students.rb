# 8.7 rewrite input_students method
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"

  students = []
  cohorts = ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"]
  name = gets.chomp

  puts "Please enter the cohort of the students"
  cohort = gets.chomp.downcase

  if name.empty?
    name = "basile"
  elsif cohort.empty?
    cohort = "january"
  end


  while !name.empty? do
    if !cohorts.include?(cohort.to_s)
      puts "sorry, invalid cohort, try again"
    else
  students << {name: name, cohort: cohort}    
end
     if students.count <= 1 
     puts "Now we have #{students.count} student" 
   else
     puts "Now we have #{students.count} students"
   end

    puts "Please enter another name"
    name = gets.chomp
    puts "Please enter a new cohort"
    cohort = gets.chomp
  end
  students
end

def print(students)
    students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)" if student[:cohort] == "january"
     end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def footer(names)
  
  if names.count <= 1
    puts "Overall, we have #{names.count} great student"
  else
    puts "Overall, we have #{names.count} great students"
  end
end

students = input_students
print_header
print(students)
footer(students)
