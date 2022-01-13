dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(string, dictionary)
  contained_list = Hash.new(0)
  input_array = string.downcase.split(' ')
  dictionary.each do |word|
    input_array.each do |input|
      contained_list[word] += 1 if input.include?(word)
    end
  end
  contained_list
end

puts 'Enter a string or word: '
string = gets.chomp
p substrings(string, dictionary)
