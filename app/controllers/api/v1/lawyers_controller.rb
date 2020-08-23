class Api::V1::LawyersController < ApplicationController

    def index
        @lawyers = Lawyer.all 
        render json: @lawyers
    end

    def create 
        @lawyer = Lawyer.new(lawyer_params)
        if @lawyer.save
            render json: @lawyer 
        else
            render json: {error: "Error creating lawyer"}
        end
    end

    def show
        @lawyer = Lawyer.find(params[:id])
        render json: @lawyer 
    end

    def destroy 
        @lawyer = Lawyer.find(params[:id])
        @lawyer.destroy
    end

    private
    
    def lawyer_params
        params.require(:lawyer).permit(:first_name, :last_name, :cases, :retainer)
    end

end
