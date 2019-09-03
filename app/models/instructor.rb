class Instructor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    # Takes in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
    def pass_student(student, test_name)
        test_exist = BoatingTest.all.find do |boating_test|
            boating_test.instructor == self && boating_test.student && student && boating_test.name == test_name
        end
        if (test_exist)
            test_exist.status = "Passed"
        else
            BoatingTest.new(student, test_name, "Passed", self)
        end
    end 

    # Takes in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.
    def fail_student(student, test_name)
        test_exist = BoatingTest.all.find do |boating_test|
            boating_test.instructor == self && boating_test.student && student && boating_test.name == test_name
        end
        if (test_exist)
            test_exist.status = "Failed"
        else
            BoatingTest.new(student, test_name, "Failed", self)
        end
    end

end
