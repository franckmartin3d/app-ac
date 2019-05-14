class Bootcamp

  def initialize(name,slogan,student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new{|hash, k|hash[k]=[]}
  end

  def name
    @name
  end

  def slogan
    @slogan
  end

  def teachers
    @teachers
  end

  def students
    @students
  end

  def hire(teacher)
    @teachers << teacher
  end

  def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else 
            return false
        end
    end

    def enrolled?(student)
        @students.each do |name|
            if name == student
                return true
            end
        end
        return false
    end



    def student_to_teacher_ratio

       ratio =  @students.length / @teachers.length
    end

    def add_grade(student,grade)

        if enrolled?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].length
    end

    def average_grade(student)
        if enrolled?(student)
            
            student_array = @grades[student]

            if student_array.length <=0
                return nil
            else
                average = student_array.sum / student_array.length
                return average
            end
        else
            return nil
        end
    end


    

end

p "this works"
