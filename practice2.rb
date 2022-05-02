# regular Expression
# line1 = "Gardian of the galaxy"
# line2 = "Alice from the wonder lend"

# if (line1 =~ /the(.*)/)
# 	puts line1
# end	

# if (line2 =~ /lend(.*)/)
# 	puts line2
# end	


# if (line1 =~ %r{The(.*)})
# 	puts line1
# else
# 	puts "There is something more"
# end

# DateTime
# current_time = Time.new
# puts "Today's is " + current_time.inspect

# time = Time.now
# puts "Today's time is " + time.inspect

# x = Time.new
# puts x.day

# month = Time.new
# puts month.month

# x = Time.new
# puts x.year

# x = Time.new
# puts x.wday

# x = Time.new
# puts x.yday

# time = Time.new
# puts time.strftime("%d/%m/%Y  %H:%M:%S")

# x = Time.new
# puts x.ctime

# x = Time.new
# puts x.localtime

# x = Time.new
# puts x.strftime("%a, %A, %b, %B, %c, %d, %H, %I, %j, %m, %%")

# class Computer
# 	attr_accessor :name, :ram, :cpu
#     def initialize(n,r,c)
#     	@name = n
#     	@ram = r
#     	@cpu = c
#     end	
    
#     def comp1
#     	"The name of the computer is #{@name}"
#     	"The ram of the computer is #{@ram}"
#     	"The cpu of the computer is #{@cpu}"
#     end

#     def comp2(n,r,c)
#     	@name = n
#     	@ram = r
#     	@cpu = c
#     end

#     def info
#     	"The name of the computer is #{name} ram #{ram} and cpu #{cpu}."
#     end	
# end

# laptop1 = Computer.new("HP","4GB","i3")
# puts laptop1.comp1

# laptop1.comp2("Ryzen3", "8GB", "i5")
# puts laptop1.info

# module

# module Library
# 	C = 300
# 	def Library.selfhelpbook
# 		puts "Atomic Habit"
# 		puts "Eat that frog"
# 	end
	
# 	def Library.horrer
# 	    puts "Zombie land"
#     end
# end

# module Novel
# 	T = 123
# 	R = 23
# 	def Novel.selfhelpbook
# 		puts "wings of fire"
# 	end
# end


# puts Library::C
# Library.selfhelpbook
# Library.horrer

# Novel.selfhelpbook
# puts Novel::T
# puts Novel::R


# creat Module

# require "./module.rb"
# Laptop.name()
# Laptop.ram()
# Laptop.cpu()

# array Indexing
# list1 = Array.new(20)
# puts list1.size
# puts list1.length

# list1 = ["Apple", 2,3,4,5,6,7]
# for i in list1 do 
# 	puts i
# end	

# puts list1[1...4]

# puts list1[4,5]

# puts list1[-1]

#str = "Hello this is suhani"
# puts str + " welcome to rimghim villa"
# puts str[1...5]
# x = str.split(" ")
#puts x

# x = 34
# y = 23
# puts x + y

# block
# arr = Array[12,67,89,43,21]
# arr.each do |num|
# 	puts num
# end	

# # yield
# def basic_func
# 	yield 1
# 	yield 2
# 	yield 3
# 	yield 4
# end

# basic_func {|num| puts "Honesty is the best policy #{num}"}
# basic_func {|num| puts num * 10}


# def basic_block(&block)
# 	block.call       # For calling the function we use this Call world
# 	block.call
# end
# basic_block { puts "Dont be distrated focus on your work"}	

# LAMBDA 

# this_is = -> {puts "This is a lambda"}
# this_is.call
# this_is.()
# this_is[]
# this_is.===

# addition = ->(x) {puts x * 5}
# addition.call(50)

# proc
# t = Proc.new {|x,y| puts "Puts dosent care about argument!"}
# t.call

# Multiline string

# puts %/ 
# 5 seconds of rule
# atomic habit
# abrahim lincoln
# wings of fire/

# puts <<STRING
# Who 
# moved 
# my 
# cheese 
# STRING

# concate Method

# puts "keep smile".concat"live life happily".concat"stop worry start living"

# iterator

# (1..4).each do |x|
# 	print x
# end

# 5.times do |x|
#     print x
# end

# 1.upto(5) do |x|
#     print x
# end        	

# 5.downto(1) do |x|
# 	print x
# end

# (2..10).step(2) do |x|
#     print x	
# end

# I/o file handling
# File.open('about.txt', 'w') do |f|
# 	f.puts "This is JavaTpoint"
# 	f.write "you are reading something important\n"
#     f<<"Please visit our website.\n"
# end	

# exception Handling

# def raise_and_rescue
# 	begin
# 		puts 'Before the raise'
# 		raise 'An error occured'
# 		puts 'After the raise'
# 	rescue
# 	    puts 'Code rescued'
# 	end

# 	puts 'After the begin block'
# end

# raise_and_rescue


# iF ELSE

# n = gets.chomp.to_i
# if (n%2 == 0) 
#    puts "even number"
# else
#    puts "odd number"
# end      

	    
