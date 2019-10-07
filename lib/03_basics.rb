def who_is_bigger (a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  elsif a>b && a>c
    return "a is bigger"
  elsif b>a && b > c
    return "b is bigger"
  else
    return "c is bigger"
  end
end

def reverse_upcase_noLTA (string)
string.reverse.upcase.delete("LTA")
end

def array_42 (array)
  array.include?(42)
end

def magic_array (m)
  # .flatten - flattened (i.e. no more arrays in array)
  # .sort - sorted
  # .map{|n|n*2}- with each number multiplicated by 2
  # .delete_if{|n|n%3 == 0}- with each multiple of 3 removed
  # .uniq - with each number duplicate removed (any number should appear only once)
m.flatten.sort.map{|n|n*2}.delete_if{|n|n%3==0}.uniq
end
