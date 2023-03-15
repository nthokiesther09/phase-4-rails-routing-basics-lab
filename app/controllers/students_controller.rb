class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end
    def grades 
        student = Student.order("grade DESC")
        render json: student
    end
    def highest_grade
        max_grade = Student.maximum(:grade)
        student_with_highest_grade = Student.find_by(grade: max_grade)
        render json: student_with_highest_grade
    end



end
