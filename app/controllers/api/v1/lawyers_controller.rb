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

    def update
        @lawyer = Lawyer.find(params[:id])
        @lawyer.update(
            first_name: params["lawyer"]["first_name"], 
            last_name: params["lawyer"]["last_name"],
            profile: params["lawyer"]["profile"],
            practice: params["lawyer"]["practice"],
            position: params["lawyer"]["position"],
            law_school: params["lawyer"]["law_school"],
            email: params["lawyer"]["email"],
            phone: params["lawyer"]["phone"])
        @lawyer.save
        render json: @lawyer
    end

    private
    
    def lawyer_params
        params.require(:lawyer).permit(
            :first_name, 
            :last_name, 
            :cases, 
            :retainer, 
            :profile,
            :practice,
            :position,
            :law_school,
            :email,
            :phone)
    end

end
