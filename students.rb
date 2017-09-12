students = []
eye_colors = []
ages = []

File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
end

# print students, "\n"
# print eye_colors, "\n"
# print ages, "\n"

def students_with_brown_eyes(eye_colors)
	brown_eyes = 0

	eye_colors.each do |eye_color|
 		if eye_color == "Brown"
			brown_eyes += 1
		end
	end

	return brown_eyes

end

def old_enough_to_drive(ages, students)
	drivers = []

	ages.each_with_index do |age, i|
		if age >= 16
			print students[i]
		end
	end

	return drivers
end

def green_eyed_girls(students, eye_colors)
	greengirls = []
	

	eye_colors.each_with_index do |eye_color, i|
		if i%2 == 0
			if eye_color == "Green"
				greengirls.push(students[i])
			end
		end
	end

	return greengirls
end
	

# def vowels(ages, students)
# 	if age = 15
# 		students.each do |name|

# 		end
# 	end 
# end


# x = students_with_brown_eyes(eye_colors)
# puts x

# y = old_enough_to_drive(ages, students)
# puts y

a = green_eyed_girls(students, eye_colors)
puts a

# z = vowels(ages, students)
# puts z