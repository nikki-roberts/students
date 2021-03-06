students = []
eye_colors = []
ages = [] 
blood_types = []

File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
	blood_types.push(info[3].strip)
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


avgage = 0

def find_greenages(eye_colors, ages)
	greenages = []

	eye_colors.each_with_index do |eye_color, i|
		if eye_color == "Green"
			greenages.push(ages[i])
		end
	end
	return greenages
end

def average_age_green(students, eye_colors, ages)
	totalage = 0.0

	greenages = find_greenages(eye_colors, ages)

	greenages.each_with_index do |age, i|
		totalage = totalage + age
	end
	avgage = totalage / greenages.length

	
	return avgage

end


def which_green(students, ages, avg, eye_colors)
   avg = average_age_green(students, eye_colors, ages)

   minimum = 20
   students.each_with_index do |student, i|
   	if eye_colors[i] == "Green"
   		min_now = (ages[i] - avg).abs
   		if min_now < minimum
   			minimum = min_now
   		end
    end

   end	

   return minimum

end

def possible_donors(students, blood_types, name)

	possible_types = []
	donors_for_o = []
	donors_for_ab = []
	donors_for_a = []
	donors_for_b = []

	students.each_with_index do |student, i|
		if student == name
			# if blood_types[i] == "O"
				
			# 	possible_types = ["O", "A", "AB", "B"]
			# 	blood_types.each_with_index do |blood_type, i|
			# 		possible_types.each do |possible_type|
			# 			if blood_type == possible_type
			# 				donors_for_o.push(students[i])
			# 			end
			# 		end
			# 	end
			# end

			if blood_types[i] == "AB"
				
				possible_types = ["AB"]
				blood_types.each_with_index do |blood_type, i|
					possible_types.each do |possible_type|
						if blood_type == possible_types
							donors_for_ab.push(students[i])
						end
					end
				end
				
			end

			# if blood_types[i] == "A"
				
			# 	possible_types = ["A", "AB"]
			# 	blood_types.each_with_index do |blood_type, i|
			# 		possible_types.each do |possible_type|
			# 			if blood_type == possible_types
			# 				donors_for_a.push(students[i])
			# 			end
			# 		end
			# 	end
				
			# end

			# if blood_types[i] == "B"
				
			# 	possible_types = ["B", "AB"]
			# 	blood_types.each_with_index do |blood_type, i|
			# 		possible_types.each do |possible_type|
			# 			if blood_type == possible_types
			# 				donors_for_b.push(students[i])
			# 			end
			# 		end
			# 	end
				
			# end

			# puts "Blood type #{i}"

			if blood_types[i] == "O"
				return donors_for_o 
			end
			if blood_types[i] == "B"
				return donors_for_b
			end
			if blood_types[i] == "A"
				return donors_for_a
			end
			if blood_types[i] == "AB"
				return donors_for_ab
			end

		end

	end

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

# which = which_green(students, ages, avg, eye_colors)
# puts which

# possible1 = possible_donors(students, blood_types, "Alice")
# puts possible1
# # test blood type o

possible2 = possible_donors(students, blood_types, "Irene")
puts possible2
# test blood type ab

# possible3 = possible_donors(students, blood_types, "Carol")
# puts possible3
# # test blood type a

# possible4 = possible_donors(students, blood_types, "Erica")
# puts possible4
# test blood type b