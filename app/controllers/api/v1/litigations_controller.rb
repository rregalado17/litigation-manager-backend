class Api::V1::LitigationsController < ApplicationController

    before_action :set_lawyer

    def index
        @litigations = @lawyer.litigations 
        render json: @litigations
    end

    def show
        @litigation = @lawyer.litigations.find_by(id: params[:id])
        render json: @litigation 
    end

    def create 
        @litigation = @lawyer.litigations.new(litigation_params)
        if @litigation.save
            render json: @lawyer
        else
            render json: {error: "Error creating litigation"}
        end
    end


    def destroy 
        @litigation = Litigation.find(params[:id])
        @lawyer = Lawyer.find(@litigation.lawyer_id)
        @litigation.destroy
        render json: @lawyer
    end

    # def update
    #     binding.pry
    # end

    private
    def set_lawyer 
        @lawyer = Lawyer.find(params[:lawyer_id])
    end

    def litigation_params
        params.require(:litigation).permit(:lawyer_id, :caption, :court, :judge, :opposing_party, :status, :costs)
    end

end
