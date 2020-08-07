class EnrollmentsController < ApplicationController

    def index
        @enrollments = Enrollment.all
        render :index
    end

    def show
        @enrollment = Enrollment.find(params[:id])
    end

    def new
        @enrollment = Enrollment.new
    end

    def create
        student = params["enrollment"]["student_id"]
        course = params["enrollment"]["course_id"]
        enrollment = Enrollment.create(student_id: student, course_id: course)
        redirect_to enrollment_path(enrollment)
    end

    def edit
       @enrollment = Enrollment.find(params[:id])
    end

    def update
        @enrollment = Enrollment.find(params[:id])
        @enrollment.update(enrollment_params(:course_id))
        redirect_to enrollment_path(@enrollment)
    end

    # def destroy
        
    # end

    private
    def enrollment_params(*optional)
        params.require(:enrollment).permit(*optional)
    end

end
