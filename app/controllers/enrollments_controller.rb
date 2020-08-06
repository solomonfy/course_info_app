class EnrollmentsController < ApplicationController

    def index
        @enrollments = Enrollment.all
        render :index
    end

    def show
        @enrollment = Enrollment.find(params[:id])
    end

    # def new
        
    # end

    # def create
        
    # end

    # def edit
        
    # end

    # def update
        
    # end

    # def destroy
        
    # end
end
