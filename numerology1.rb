def get_bday
	puts "When is your birthday? (MMDDYYYY)"
	gets.chomp
end

def calc_bday1(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i
	number
end

def bday_number(number1)
	"Your numerology number is #{number}"
	
end

def message (number1)
	case number
	when 1
		"One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."

	when 2
		"Two is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."

	when 3 
		"Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter."

	when 4
		"This is the worker. Practical, with a love of detail. Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."

	when 5
		"This is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."

	when 6
		"This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."

	when 7
		"This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."	
	when 8
		"This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."

	when 9
		"This is the teacher. Number Nine is a tolerant, somewhat impractial, and sympathetic vibration. Ruled by Mars."

	else
		"Sad Day. You have no future."

end

def run
	birthdate = get_bday
	result = calc_bday1(birthdate)

	number = result.to_s
	number = number[0].to_i + number[1].to_i

	if number > 9
		number = number[0].to_i + number[1].to_i
	end

	number_final = bday_number(number1)
	message = message(number1)
	puts "#{bday_number}\n#{message}"
end