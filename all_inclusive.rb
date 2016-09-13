def contain_all_rots(strng, arr)
  return true if strng.empty?
  n = strng.length
  strng.chars.cycle(2).each_cons(n).take(n).map { |x| x.join } - arr == []
end


__END__

All Inclusive, 7 kyu 

Input:

a string strng
an array of strings arr
Output of function contain_all_rots(strng, arr) (or containAllRots or contain-all-rots):

a boolean true if all rotations of strng are included in arr
false otherwise
Examples:

contain_all_rots(
  "bsjq", ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"]) -> true

contain_all_rots(
  "Ajylvpy", ["Ajylvpy", "ylvpyAj", "jylvpyA", "lvpyAjy", "pyAjy
p contain_all_rots("abcd", [])