def zebulansNightmare(functionName)
  return '' if functionName.empty?
  new_name = functionName.split("_").map { |phrase| phrase.capitalize}
  first_word = new_name.first.downcase
  new_name.shift
  first_word + new_name.join
end

__END__

Zebulan's Nightmare, 7 kyu 

Zebulan has worked hard to write all his python code in strict compliance to PEP8 rules. In this kata, you are a mischevious hacker that has set out to sabatoge all his good code.

Your job is to take PEP8 compatible function names and convert them to camelCase. For example:

zebulansNightmare('camel_case') == 'camelCase'
zebulansNightmare('zebulans_nightmare') == 'zebulansNightmare'
zebulansNightmare('get_string') == 'getString'
zebulansNightmare('convert_to_uppercase') == 'convertToUppercase'
zebulansNightmare('main') == 'main'