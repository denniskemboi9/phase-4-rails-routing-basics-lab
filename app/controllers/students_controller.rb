class StudentsController < ApplicationController
    def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        students_by_grade = Student.order(grade: :desc)
        render json: students_by_grade
    end

    def highest_grade
        best_student = Student.order(grade: :desc).first
        render json: best_student
    end
end
