def translate(string)

	letters = *("a".."z") # Renvoie un tableau contenant toutes les lettres
	vowels = ["a", "e", "i", "o"]
	consonants = letters - vowels

	# On créé un tableau contenant les différents mots de la chaîne de carctère initiale.
	array_word = string.split(" ")

	# On parcourt tous les éléments de ce premier tableau. La variable string prend tour à tour comme valeur chacun des mots.
	array_word.each do |string|

		# Chaque mot est décomposé en tous ses caractères. Ceux-ci sont mis dans le tableau letter_array
		letter_array = string.split("")
		index_letter_array = 0

		# Pour chaque caractère de chaque mot
		letter_array.each do |char|

			# Si la première lettre est une voyelle
			if vowels.include?(letter_array[0])
				$word = string
				break

			# Si la lettre du tableau letter_array est une consonne
			elsif consonants.include?(char)

				array_new_word = letter_array[(index_letter_array+1)..-1] + letter_array[0..index_letter_array]

				$word = array_new_word.join("")
			

			# Sinon, on sort du if
			else 
				break


			end

			index_letter_array += 1
		end
		
		return $word + "ay"
	end

	# Si il y avait plusieurs mots au départ, on remet les nouveaux mots dans l'ordre

end

