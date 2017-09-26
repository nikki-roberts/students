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
	

def vowels(ages, students)		# should return Gloria
	sophomores = []
	ages.each_with_index do |age, i|
		if age == 15
			sophomores.push(students[i])
		end
	end

	vowel_count = []
	vowels = 0
	sophomores.each do |sophomore|
		sophomore.chars.each do |letter|
			if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u"
				vowels += 1
			end
		end
		vowel_count.push(vowels)
		vowels = 0
	end
	max_vowels = vowel_count[0]
	index = 0
	vowel_count.each_with_index do |count, i|
		if count > max_vowels
			max_vowels = count
			index = i
		end
	end
	return sophomores[index]
end

greenages = []
avgage = 0
def average_age_green(students, eye_colors, ages)
	totalage = 0.0
	
	eye_colors.each_with_index do |eye_color, i|
		if eye_color == "Green"
			greenages.push(ages[i])
		end
	end
	greenages.each_with_index do |age, i|
		totalage = totalage + age
	end
	avgage = totalage / greenages.length
	return greenages
	return avgage
end

def which_green(greenages, ages, students)
	which_green_students = []
	greenages.each_with_index do |ages, students, i|
		while age == avgage
			which_green_students.push(students[i])
		end
	end
	puts which_green_students
end


# x = students_with_brown_eyes(eye_colors)
# puts x

# y = old_enough_to_drive(ages, students)
# puts y

# a = green_eyed_girls(students, eye_colors)
# puts a

# z = vowels(ages, students)
# puts z

# avg = average_age_green(students, eye_colors, ages)
# puts avg 

which = which_green(greenages, ages, students)
puts which