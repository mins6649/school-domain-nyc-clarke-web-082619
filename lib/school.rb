# code here!
class School

    attr_reader :name, :roster
    def initialize(school_name)
        @school_name = name
        @roster = {} 
    end

   def add_student(student_name, grade)
    if roster[grade]
        roster[grade] << student_name
    else roster[grade] = []
        roster[grade] << student_name
    end
   end

   def grade(grade)
    roster[grade]
   end
    
#    def sort
#     roster.each do |grades, names|
#     names.sort
#     end
#    end

#sort is nondestructive. we need to create a new array to call for sorted hash.

   def sort
    sorted = {}
    roster.each do |grades, names|
        sorted[grades] = names.sort
    end
    sorted 
   end
end

school = School.new("Bayside High School")
school.roster