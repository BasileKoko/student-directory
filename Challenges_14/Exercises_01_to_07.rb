require 'csv' #using CSV file library
@students = [] #an empty array accessible to all methods

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list of students "
  puts "4. Load the list of students"
  puts "9. Exit" # 9 because we'll be adding more items 
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def process(selection)
  case selection
    when "1" then input_students
    when "2" then show_students
    when "3" then save_students
    when "4" 
     puts "Which file would you like to load?"
      filename = gets.chomp
      if File.exists?(filename)
        load_students(filename)
      else
        puts "Sorry, #{filename} does not exist."
      end
    when "9" then puts "Good bye!" ; exit #this will cause the program to terminate 
    else
      puts "I don't know what you meant, try again"
    end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #get the first name
  name = STDIN.gets.chomp
 # while the name is not empty, repeat this code
 while !name.empty? do 
   # add the student hash to the array
   add_students(name, :november)
   puts "Now we have #{@students.count} students"
   #get another name from the user
   name = STDIN.gets.chomp
 end 
end

def show_students
  print_header
  print_student_list
  print_footer
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each  do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

def save_students
  #open the file for writing
  #ask user to enter the filename to write to
  puts "Please enter filename to save the students list to"
 filename = gets.chomp
 if filename.nil?
    filename = "students.csv"
  else
    filename
  end
 # using CSV library
 CSV.open(filename, 'w') do |row|
  # itirate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    row.puts student_data
  end
  end
  puts "List of students saved to #{filename}"
end

def load_students(filename)
  File.open(filename, "r") do |f|
  f.readlines.each do |line|
    name, cohort = line.chomp.split(",")
    add_students(name, cohort)
  end
   end
  puts "file #{filename} has been loaded!"
end

def load_students_on_startup
  filename = ARGV.first # first argument from the command line
  filename = "students.csv" if filename.nil? # load the file students.csv if file name is not given by user
  if File.exists?(filename) #if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit # quit the program
  end
end


#add students to the  array @students
def add_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

#nothing happens until we call the methods
load_students_on_startup
interactive_menu
