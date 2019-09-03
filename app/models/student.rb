class Student

    attr_reader :first_name
    @@all = []

    def initialize(first_name)
        @first_name = first_name
        @@all << self
    end

    def self.all
        @@all
    end

    # Initializes a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
    def add_boating_test(name, status, instructor)
        BoatingTest.new(self, name, status, instructor)
    end

    # Will take in a first name and output the student (Object) with that name
    def self.find_student(first_name)
        self.all.find do |student|
            student.first_name == first_name
        end
    end

    # Returns an array of all the BoatingTest instances of this Student instance
    def boating_tests 
        BoatingTest.all.select do |test|
            test.student == self
        end
    end

    # Returns the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`)
    def grade_percentage
        passed_tests = self.boating_tests.select do |test|
            test.status == "Passed"
        end
        (passed_tests.count.to_f / self.boating_tests.count) * 100
    end

end
