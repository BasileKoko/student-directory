#8.7 rewrite input_students method
 def input_students
   puts "Please enter the names of the students"
   puts "To finish, just hit return twice"
 
   students = []
    #list of valid cohorts
   cohorts = [:january, :march, :may, :september, :november]
   name = gets.strip
 
   puts "Please enter the cohort of the students"
   cohort = gets.strip.downcase.to_sym
    # give default value to name or cohort if user does not enter any
   if name.empty?
     name = "basile"
   elsif cohort.empty?
     cohort = :january
   end
 
   #repeat this code only if either name is not empty or cohort is not empty
   while !name.empty? || !cohort.empty? do
    #if cohort is empty print message
     if cohort.empty?
      puts "no cohort received"
    #if the cohort entered is not included in the valid cohorts list print the message
    elsif !cohorts.include?(cohort.to_sym)
       puts "sorry, invalid cohort, try again"
     else
    # add hash tp the array students
   students << {name: name, cohort: cohort}    
 end
    # exit the loop if the no name and cohort is given
      if students.count == 0
        puts "No name and cohort received, exiting..."
        exit
    # if at least 1 name or 1 cohort is given print singular student count
      elsif students.count  == 1
      puts "Now we have #{students.count} student" 
    else
    # if more than 1 name or cohort is given print plural student count
      puts "Now we have #{students.count} students"
    end
    # ask user to enter another name and cohort if at least 1 name or cohort was given previously
     puts "Please enter another name"
    #replacing gets.chomp with gets.strip
     name = gets.strip
     puts "Please enter a new cohort"
     cohort = gets.strip.downcase.to_sym
   end
   students
 end
 
 def print(students)
    #ask which cohort students to print
  puts "which cohort students do you want to print?"
  input = gets.strip.downcase
     students.each do |student|
     puts "#{student[:name]} (#{student[:cohort]})" if student[:cohort] == input.to_sym
      end
 end
 
 def print_header
   puts "The students of Villains Academy"
   puts "-------------"
 end
 
 def footer(names)
   # print singular student when students count is less or equal to 1
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