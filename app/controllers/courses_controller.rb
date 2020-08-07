class CoursesController < ApplicationController

    def index
        @courses = Course.all
        render :index
    end

    def show
        @course = Course.find(params[:id])
        render :show
    end

    def new
        @course=Course.new
    end

    def create
        new_course = Course.create(course_params(:title, :description, :credit_hr, :start_date, :month_duration))
        redirect_to Course.last
        #course_path(new_course)
    end
    
    def edit
        @course = Course.find(params[:id])
    end

    def update
        @course = Course.find(params[:id])
        @course.update(course_params(:start_date, :month_duration))
        redirect_to course_path(@course)
    end

    def destroy
        @course = Course.find(params[:id])
        @course.destroy
        redirect_to courses_path
    end

    private
    def course_params(*optional)
        params.require(:course).permit(*optional)
    end


end
