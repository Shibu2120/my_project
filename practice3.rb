# puts "Hello \nThis \tis ruby\r editor
# str = "Today is monday"
# puts str.include? "monday"

# binary = "1100"
# puts binary.rjust(8, "0")
# puts binary.ljust(8, "0")

# str = "start with ruby programing"
# puts str.start_with? "start"
# puts str.end_with? "ruby"
# puts str.delete_prefix("start")
# puts str.delete_suffix("with ruby programing")

# str = ""
# str << "Hello"
# str << ", "
# str << "How are you?"
# puts str

# arr =[23,45,67,21]
# puts arr.join("_")

# str = "rajnandni"
# str.each_char {|ch | puts ch}

# a = <<-STRING  # for multiline string
#    aaa
#    asfa
#    bbb
#    STRING
# puts a   

# str = %Q(    # for multiline string
# hello there
# this is 
# nick
# )
# puts str


# for raplace word we use gsub method

# city = "Indore is a beuatiful city"
# puts city.gsub("Indore", "Bhopal")

# string ="abbcccssdd"
# puts string.gsub("c", "")

# string = "I have a 5 cats"
# puts string.gsub(/\d+/, "3")

# string = "I love indore"
# puts string.gsub(/\w+/) {|indore| indore.downcase }


# puts "string?".chomp("?")

# puts "string".encoding

# # Hash Methods
# dict1 = {"a" => 1, "b" => 2, "c" => 3}
# dict2 = {"c" => 4, "d" => 5}
# # puts dict1.merge!(dict2)
# puts dict1.merge!(dict2) {|key, old, new| [old, new].max}

# dictionary = {
# 	fruits:["kiwi", "banana", "orrange", "apple"],
# 	name:["sam", "jack","kim", "seldom"]
# }
# puts dictionary[:fruits][2]

# sort dictionary
# dictionary = {"b" => 1, "c" => 2, "d" => 3, "a" => 4}
# print dictionary.sort()  # it sorts according to key 
# print dictionary.sort_by(&:last) # it sorts according to value
# print dictionary.keys.sort()
# print dictionary.values.sort()

# iterator

(1..5).each do |i|
	puts i
end

arr = [2,3,5,6,2,7]
a = arr.collect{ |b| (b * 5)}
puts a

3.times do |str|
	puts str
end	

2.upto(5) do |i|
	puts i
end

7.downto(0) do |i|
	puts i
end

(2..10).step(2) do |i|
	puts i
end

"indore\nis\na\ncleanest\ncity\nin\nMP".each_line do |string|
	puts string
end	
