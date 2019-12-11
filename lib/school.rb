class School
  attr_accessor :name, :roster, :add_student, :student, :grade
  def initialize(name, roster={})
    @name = name
    @roster = roster
    @grade
    @student
  end

  def add_student(student, grade)
    if !@roster[grade]
      @roster[grade] = [student]
    elsif @roster[grade]
      @roster[grade].push(student)
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.each {|(key, val)| roster[key] = val.sort}
  end
end