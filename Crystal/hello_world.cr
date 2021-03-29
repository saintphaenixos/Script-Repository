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

puts "here's some comparison operators:"
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

puts "you can also do concatenation where you just glue everything together with +'s'"
puts "This is an example of " + newvariable + " remembering to add spaces"

puts "To escape characters in a string such as \"\", here is how to escape them."
puts "This is: \"an Example\""

puts "you can also remove tons of them at once, by using \%\(\)"

puts "for example: %(\\\\\\\\\ and \\\\n)"

#simple terminals may not have unicode so quote this out:
#puts "You can show unicode emoji by simply printing it here: 🌐 or by using \u{1F310}"

puts "You can do Transformations on text in the following way. Camelcasing and underscoring work differently."

message = "This is a Test!"

puts "normal: #{message}"
puts "upcased: #{message.upcase}"
puts "downcased: #{message.downcase}"
puts "camelcased: #{message.camelcase}"
puts "capitalized: #{message.capitalize}"
puts "reversed: #{message.reverse}"
puts "titleized: #{message.titleize}"
puts "underscored: #{message.underscore}"

puts "crystal also can use powershell like property dereference operators"

newmessage = "How long is this string? It can be very long indeed!"

puts newmessage.size

puts "you can also check to see if a variable is blank! for example Blorgmessage is null."
blorgmessage = ""

puts newmessage.empty?
puts blorgmessage.empty?

puts "Here is an equivalent for the UNIX \[ command in Crystal:"

puts message == "this is a test",
   message == "this is a blorg",
   message == "This is a Test",
   message.compare("this is a test", case_insensitive: false),
   message.compare("this is a test", case_insensitive: true)

puts "We can also test if a string includes specific parts, this will output a true or false"

puts message.includes?("Crystal"),
   message.includes?("Test")

puts "We can test if a string starts or ends with a particular bit of text also:"

puts message.starts_with?("This"),
    message.starts_with?("Blorg"),
    message.ends_with?("!"),
    message.ends_with?("?")

puts "If you need to see the indexed position of a character in a string you can search in this manner, it will find the first instance of that character or characters."

puts "What is the position?".index("What"),
    "What is the position?".index("s"),
    "What is the position?".index("po")

puts "Boolean algebra for comparing values or strings is done in the following way:"

a = true
b = false

puts a && b, # conjunction (AND)
   a || b, # disjunction (OR)
   !a,     # negation (NOT)
   a != b, # inequivalence (XOR)
   a == b  # equivalence

puts "Here's an example of some use of conjuction and disjunctions:"

puts "foo" && nil,
  "foo" && false,
  false || "foo",
  "bar" || "foo"

puts "Here's an example of an if Statement:"

if message.starts_with?("This")
  puts "Message starts with the word: This, continuing..."
end

#This next one will be false and not show in the compiled program:
if message.starts_with?("blorg")
  puts "Then this isn't going to work."
end

if !message.starts_with?("Blorg")
  puts "Message doesn't start with Blorg, it really should..."
end

puts "With boolean Algebra we can also do this:"

if message.starts_with?("This") || !message.starts_with?("Blorg")
  puts "this variable starts with this, and doesn't start with blorg so its true!"
end

puts "We can alsdo replace if with Unless which is the opposite of if"

#I LOVE THIS UNLESS STATEMENT, THATS A COOL FEATURE OF THE LANGUAGE! :O!

unless message.starts_with?("Blorg")
  puts "unless this statement starts with blorg, always print this message. :)"
end

# Crystal uses PCRE Regex, so my perl strings will still work with no issue here.

if /This/.match("#{message}")
  puts "This regex works!"
end

unless /Blorg/.match("#{message}")
  puts "This regex won't work!"
end
