# puts "This is shivani's first program here"

# BEGIN {
# 	puts "Hello this is shivani shilpi"
# }
# END {
# 	puts "The earth is not round"
# }

# class Customer
# 	@@no_Of_Employee = 0
# 	def initialize(id, name, rollno)
# 		@comp_id = id
# 		@comp_name = name
# 		@comp_rollno = rollno
# 	end
# 	def customer_details()
# 		puts "This is customer id #@comp_id"
# 		puts "This is customer name #@comp_name"
# 		puts "This is customer rollno #@comp_rollno"
# 	end	
# 	def total_no_of_employee()
# 		@@no_Of_Employee += 1
# 		puts "Total no of Employee: #@@no_Of_Employee"
# 	end	
# end

# comp1 = Customer.new("1","Shivani","21")
# comp2 = Customer.new("2","Deepak","20")
# comp1.customer_details()
# comp2.customer_details()
# comp1.total_no_of_employee()
# comp2.total_no_of_employee()

# class Sample
# 	def hello
# 		puts "Hello Ruby"
# 	end
# end

# object = Sample.new
# object.hello	

# $global_variable = 10
# class Class1
# 	def print_global
# 		puts "Global variable in Class1 is #$global_variable"
# 	end
# end	
# class Class2
#     def print_global
#         puts "Global variable in Class2 is #$global_variable"
#     end
# end    
# obj1 = Class1.new
# obj1.print_global
# obj2 = Class2.new
# obj2.print_global   		
		
# class Box
# 	def initialize(w,h)
# 		@width = w
# 		@hight = h
# 	end
# 	def width_hight
# 	    puts "The width of the box is : #@width"
# 	    puts "The hight of the box is : #@hight"
# 	end       	
# end

# object = Box.new(10,20)
# object.width_hight()

# class Employee
# 	def initialize(name, place)
# 		@comp_name = name
# 		@comp_place = place
# 	end
# 	def employee_name
# 		@comp_name
# 	end	
# 	def employee_place
# 		@comp_place
#     end
# end

# employee = Employee.new("Shivani","Indore")

# x = employee.employee_name()
# y = employee.employee_place()

# puts "The name of the Employee is :#{x}"
# puts "The place of the Employee is :#{y}"

# class Computer
# 	def initialize(cpu,ram)
# 		@cpu = cpu
#         @ram = ram
#     end

#     def comp1  ##Acceser
#         @cpu    
#     end
#     def comp2
#     	@ram
#     end
    
#     def comp3=(value) ## Setter
#     	@cpu = value
#     end
    
#     def comp4=(value)
#         @ram = value
#     end
# end    
    
# a = Computer.new("ryzen3","4gb")

# a.comp3 = "HP"
# a.comp4 = "8gb"

# a1 = a.comp1()
# a2 = a.comp2()

# puts "The Cpu of computer is : #{a1}"
# puts "The Ram of computer is : #{a2}"

# # Instance method
# class Box
# 	def initialize(w,h) # cunstructor
# 		@width, @hight = w,h
# 	end

# 	def area    # instance method
# 	    @width * @hight
#     end
# end
# box = Box.new(20,10)
# x = box.area()
# puts "The area of the box is : #{x}"

# The class methods and variables
# class Box
# 	@@count = 0
# 	def initialize(w,h)
# 		@width, @hight = w,h

# 		@@count += 1
# 	end
	
# 	def self.rectangle_count()
# 		puts "Box count is : #@@count"
# 	end	
# end

# box1 = Box.new(10,20)
# box2 = Box.new(40,20)

# Box.rectangle_count()

# to_s
# class Box
# 	def initialize(w,h)
# 		@width, @hight = w,h
# 	end

# 	def to_s
# 		"(w:#@width, h:#@hight)"
# 	end
# end
# box = Box.new(20,10)
# puts "The string formate data of the box : #{box}"		

# public, private, protected
# class Box
#   # constructor
#   def initialize(w,h)
#       @width, @height = w,h
#   end

#   def printarea
#   	width() * height()
#   end	

#   # acceser by default it is public
#   def width
#       @width
#   end
#   def height
#       @height
#   end
#   private :width, :height
  
#   def getarea
#       @area = width() * height()
#       puts "The area of the box is :#@area"
#   end
#   protected :getarea
# end

# box = Box.new(20,30)
# a = box.printarea()
# puts "area of the box is: #{a}"

# box.getarea()  
                 
# class Inheritance
# class Box 
#    def initialize(w,h)
#        @width, @height = w,h
#    end

#    def getarea
#        @width * @height
#    end
# end

# class Bigbox < Box
#    def printArea
#        @area = @width * @height
#        puts "The area of the box : #@area"
#    end
# end

# box = Bigbox.new(20,30)
# box.printArea()

# class method and variable

# class Computer
#     @@no_of_computer = 0
#     def initialize(cpu, ram)
#         @cpu = cpu
#         @ram = ram

#         @@no_of_computer += 1
#     end
    
#     def self.no_of_computer()
#          puts "Number of computer: #@@no_of_computer"
#     end
# end    
# num1 = Computer.new("ryzen3","4gb")
# num2 = Computer.new("HP", "8GB")

# Computer.no_of_computer()             

#to_s string method
# class Number
#     def initialize(num1,num2)
#         @num1 , @num2 = num1 , num2
#     end
    
#     def to_s
#         ("#@num1,#@num2")
#     end
# end
# num = Number.new(20,30)
# puts "The number in string method is: #{num}"

#Method Overriding

# class Mul
#     def initialize(num1, num2)
#         @num1, @num2 = num1, num2
#     end
    
#     def getArea
#         @num1 * @num2
#     end
# end

# class Bigmul < Mul
#     def getArea
#         @num3 = @num1 * @num2 

#         puts "The multiplication of number is :#@num3"
#     end
# end

# mul = Bigmul.new(20,30)
# mul.getArea()                   

# Operator overloading
# class Addition
#     attr_accessor:num1, :num2

#     def initialize(num1,num2)
#         @num1 = num1
#         @num2 = num2
#     end
#     def +(other)
#         return Addition.new("#{self.num1}#{other.num1}","#{self.num2}#{other.num2}")
#     end
# end
# x = Addition.new("BMW","Black")
# y = Addition.new("Audi","Red")
# # puts (x+y).inspect

# class Compare
#     include Comparable
#     attr_accessor:name
#     def initialize(name)
#         @name = name
#     end
#     def <=>(other)
#         return self.name<=>other.name
#     end
# end
# a = Compare.new("Geeks for Geeks")
# b = Compare.new("Operator Overloading")
# puts a<=>b
  
# class Compare
#     include Comparable
#     attr_accessor:name
#     def initialize(name)
#         @name = name
#     end
#     def <=>(other)
#         return self.name<=>other.name
#     end
# end
# puts "Hello this is obj here" <=> "please wait she will be come in a minute"


# class Mathmatics
#     attr_accessor:num

#     def initialize(num)
#         @num = num
#     end
    
#     def +(other)
#         return @num+other
#     end
    
#     def *(other)
#         return @num*other
#     end

#     def **(other)
#         return @num**other
#     end
    
#     def /(other)
#         return @num/other
#     end 

#     def %(other)
#         return @num%other
#     end    
# end
# a1 = Mathmatics.new(4)
# puts a1 + 3
# puts a1 * 4
# puts a1 ** 2
# puts a1 / 2
# puts a1 % 3

# class Mathmatics
#    attr_accessor:num
#    def initialize(num)
#        @num = num
#    end
   
#    def -(other)
#        return self.num - other.num
#    end

#    def *(other) 
#        return self.num * other.num 
#    end
# end   
# a = Mathmatics.new(60)
# b = Mathmatics.new(45)
# puts a - b 
# puts a * b                        

# frozen object
# class Freeze
#     def initialize(x,y)
#         @x = x
#         @y = y
#     end
    
#     # accessor
#     def getArray1
#         @x
#     end
     
#     def getArray2
#         @y
#     end

#     # setter
#     def setArray1=(value)
#         @x = value
#     end

#     def setArray2=(value)
#         @y = value
#     end 
# end       

# numbers = Freeze.new(23, 40)
# numbers.freeze
# if(Freeze.frozen?)
#    puts "object is freeze"
# else
#    puts "object is not freeze"
# end   

# numbers.setArray1 = 34
# numbers.setArray2 = 24

# a = numbers.getArray1()
# b = numbers.getArray2()

# puts "This is the array: #{a}"
# puts "This is the array: #{b}"
          

# str1 = "Hey my name is shivani"
# str1.freeze

# str2 = "God is one"

# puts str1.frozen?
# puts str2.frozen?

# :: operator
# NUMS = 5

# module Comp

#     NUMS = 5

#     ::NUMS = 10


#     NUMS = 7
# end

# puts NUMS

# puts Comp::NUMS

# class Kgf
#     def comp1
#        puts "Hello this is unary operator"
#     end
# end

# a = Kgf.new
# a.comp1        

#SELF
# class Computer
#     puts "Type of self =  #{self.type}"
#     puts "Name of self =  #{self.name}"
# end    

# class Home
#     def name=(n)
#         @name = n
#         "haveli"
#     end 
# end

# a = Home.new()
# puts(a.name = "rajnandni palace")               

# class Home
#     attr_accessor:name
#     def initialize(name)
#         @name = name
#     end
    
#     def villa
#         puts "The name of the vilaa: #@name"
#     end
    
# end        

# a = Home.new("Rajnandini palace")
# a.villa()

# puts a.name
# puts(a.name = "The new building is purani haveli
