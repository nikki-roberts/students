# APCS

# Use the following code to load data from the file
# 'student_data.csv', located on my website (braceyourself.io).
# Then write code to solve the problems at the end.

students = []
eye_colors = []
ages = []

File.open("student_data.csv").each do |line|
    info = line.split(",")
    students.push(info[0].strip)
    eye_colors.push(info[1].strip)
    ages.push(info[2].strip.to_i)
end

print students, "\n"
print eye_colors, "\n"
print ages, "\n"

ages.each_with_index do |age, i|

end

###### Problems ######

# 0) How many students have brown eyes?
# 1) Make a list of the students that are old enough to drive.
# 2) Make a list of the green-eyed girls.
# 3) Which sophomore (age=15) has the most vowels in his or her name?

# 4) What is the average age of the green-eyed students?
# 5) Which green-eyed student(s) are the closest in age to the average calculated in #4?

# 6) Add a column to the data for blood type (A, B, O, or AB) with made up data.

	# If your blood type is: 	You can donate to these blood types:
	# 		TYPE O							TYPE O, A, B, AB
	# 		TYPE A							TYPE A, AB
	# 		TYPE B							TYPE B, AB
	# 		TYPE AB							TYPE AB

    # Given a student name, make a list of all of the possible blood donors for that 
    # student.

# 7) Which student(s) has the most blood donors? How many?