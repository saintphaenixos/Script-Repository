puts "Hello World!"

#how to use variables
variablename = "This is an example!"

puts variablename

#uses put string (puts) to output type of variable that variablename is.
puts typeof(variablename)

#variablenames can change, by simply re-assigning them in code.
variablename = "this is a changed example!"
puts variablename

#How to do Math

puts "Numbers come in both InT32 32 bit integers, and in Float64 floating point numbers."

puts "1 is an", typeof(1)
puts "1.0 is an", typeof(1.0)

#here's some comparison operators:
puts 1 == 1,
     1 == 2,
     1.0 == 1,
     -2000.0 == -2000

puts "next lets try some difference operators"

puts 2 > 1,
     1 <= 1,
     2 < 1,
     1 <= 2

puts "This outputs 1, 0, or -1 deepending on if its: Equal, Greater than, or Less than."

puts 1 <=> 1,
     2 <=> 1,
     1 <=> 2

puts "Lets go ahead and try some other maths:"

puts 1 + 1,  # Addition
     1 - 1,  # Subtraction
     2 * 3,  # Mutliplication
     2 ** 4, # Exponentiation
     9 / 3,  # Division
     2 // 3, # Floor Division
     3 % 2,  # Modulus
     -1      # negation (unary)

puts "Crystal implements PEMDAS"
puts "So instead of 3+2 x 12 = 72, it equals 27."

puts 3 + 2 * 12

puts "you can also check absolute value, rounding, odd/even checking, and common divisor."

puts -5.abs,
     4.3.round,
     5.even?,
     10.gcd(16)

puts "Working with strings is like this:"
puts "this is call interpolation, where you insert a string variable into a phrase."

newvariable = "blorg"
puts "it's #{newvariable}!"

puts "this works the same with digits"
newestvariable = 6
puts "This is #{newestvariable}!"
