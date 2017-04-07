require "pry"
class School
  attr_accessor :name, :roster

  def initialize (name)
    @name = name
    @roster = {}
    #K - grade levels V - array of students
  end

  def add_student (student_name, grade)
    @roster[grade] ||= [] 
    @roster[grade] << student_name
  end

  def grade (grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, students|
      students.sort!
    }
  end
end
