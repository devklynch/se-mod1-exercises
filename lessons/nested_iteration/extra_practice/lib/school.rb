class School
  attr_reader :name, :groups, :courses

  def initialize(name, groups)
    @name = name
    @groups = groups
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def assign_to_group(student)
    student.group = @groups.sample
  end

  def group_all_students
    @courses.each do |course|
      course.students.each do |student|
        assign_to_group(student)
      end
    end
  end

  def names
    names =[]
    @courses.each do |course|
      course.students.each do |student|
        names <<student.name
        #require "pry" ; binding.pry
      end
    end
    names.uniq
  end

  def students_by_group
    new_hash = {}
      @courses.each do |course|
      course.students.each do |student|
          if new_hash[student.group]
             if !new_hash[student.group].include?(student)
              new_hash[student.group] << student
             end

          else
            new_hash[student.group] = [student]
            #require "pry" ; binding.pry
          end
        end
      end
      new_hash
      #require "pry" ; binding.pry
      end


end
