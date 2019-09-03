require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Student.new("Karen")
s2 = Student.new("Alex")
s3 = Student.new("Peter")
s4 = Student.new("Ollie")

i1 = Instructor.new("Mr. Jones")
i2 = Instructor.new("Ms. Lin")
i3 = Instructor.new("Mr. Hernandez")
i4 = Instructor.new("Ms. Smith")

t1 = BoatingTest.new(s1, "AP Calculus", "Passed", i1)
t2 = BoatingTest.new(s2, "Ruby 101", "Failed", i1)
t3 = BoatingTest.new(s2, "AP History", "Passed", i2)
t4 = BoatingTest.new(s1, "JS 101", "Passed", i3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

