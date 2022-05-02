line1 = "Cats are smarter than dogs"
line2 = "Dogs also like meat"

if (line1 =~ /Cats(.*)/)
   puts "line1 contains Cats"
end

if (line2 =~ /Cats(.*)/)
   puts "line2 contains Dogs"
end      

#Oops, attr_accessor, attr_reader, attr_writer, attr_*

def comp1
   'xxx-xx' + comp1.split('-').last
end

                                                         
