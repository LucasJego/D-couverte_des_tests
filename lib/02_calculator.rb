def add(nombre1,nombre2)
	return nombre1 + nombre2
end

def subtract(nombre1, nombre2)
	return nombre1 - nombre2
end

def sum(tableau)
	return tableau.sum
end

def power(nombre, puissance)
	return nombre ** puissance
end


#def factorial(a)
# factoriel = 1
# a.times do |b|
# factoriel = factoriel * (b + 1)
#end
#return factoriel

def factorial(nombre)
	n = 0
	resultat = 1
	while n < nombre
		resultat *= n + 1
		n += 1
	end
	return resultat
end

def multiply(nombre1, nombre2)
	return nombre1 * nombre2
end