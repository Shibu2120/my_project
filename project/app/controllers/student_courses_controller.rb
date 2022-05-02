class StudentCoursesController < ApplicationController

    def new
       @student = Student.find(params[:student_id])
       @student_course = @student.student_courses.new

    end

	def create	
	   @student = Student.find(params[:student_id])	
	    params[:student_course][:courses].each do |course| 
	   	   @courses = StudentCourse.create(student_id: @student.id, course_id: course)	   	   
	    end	
	   redirect_to students_path(@student)
	end 
	
	def student_course_params
	   params.require(:student_course).permit(:student_id, :course_id)
	end     	
end
