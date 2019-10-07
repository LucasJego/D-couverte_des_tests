def who_is_bigger (a, b, c)

  # Si l'un des trois arguments vaut nil
  if a == nil || b == nil || c == nil
    # La méthode retourne "nil detected"
    return "nil detected"
  elsif a > b && a > c
    return "a is bigger"
  elsif b > a && b > c
    return "b is bigger"
  else
    return "c is bigger"

  end
end


# ------------------------------------------------------

def reverse_upcase_noLTA (string)
  string.reverse.upcase.delete("LTA")
end


# ------------------------------------------------------

def array_42 (array)
  array.include?(42)
end


# ------------------------------------------------------

def magic_array(arr)
  # La méthode flatten sert à enlever les tableaux présents dans le tableau initial tout en conservant les valeur du tableau enlevé
  # La méthode sort permet de trier les données du tableau par ordre croissant
  # La méthode map{|n| n*2} permet de multiplier toutes les données du tableau par 2
  # La méthode delete_if{|n| n%3 == 0} permet de retirer les nombres qui répondent à la condition (n%3 == 0), soit les multiples de 3.
  # La méthode uniq permet de supprimer les éléments du tableau qui sont présents plus d'une fois
  arr.flatten.sort.map{|n|n*2}.delete_if{|n|n%3==0}.uniq
end
