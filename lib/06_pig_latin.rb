def translate(string)

	string.each_char do |char|
		#puts char
	end



	letters = *("a".."z") # Renvoie un tableau contenant toutes les lettres
	vowels = ["a", "e", "i", "o"]
	consonants = letters - vowels
	#print consonants

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
				#puts "msfdfjkmqsdj"
				#string = string + "ay"
				$word = string
				break
			# Si la lettre du tableau letter_array est une consonne, passer à la lettre suivante
			elsif consonants.include?(char)
				puts "ok"
				#letter_array = letter_array
				array_new_word = letter_array[(index_letter_array+1)..-1] + letter_array[0..index_letter_array]
				$word = array_new_word.join("")
			
				break
			# Sinon, si la lettre est une voyelle, prendre les lettres situées avant et les intégrer à la fin du mot
			else 
				#puts "pas ok"
				array_new_word = letter_array[index_letter_array..-1] + letter_array[0..index_letter_array-1]
				word = array_new_word.join("")
				print array_new_word
				puts word
			end

			index_letter_array += 1
		end
		
		return $word + "ay"
	end
	#puts "hahaha"

end

#puts translate("zabcd efg bwde")
#puts translate("apple")
#puts translate("banana")
puts translate("cherry")