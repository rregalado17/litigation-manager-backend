class Api::V1::LitigationsController < ApplicationController

    def index
        @litigations = Litigation.all 
        render json: @litigations
    end

    def create 
        @litigation = Litigation.new(litigation_params)
        if @litigation.save
            render json: @litigation
        else
            render json: {error: "Error creating litigation"}
        end
    end

    def show
        @litigation = Litigation.find(params[:id])
        render json: @litigation 
    end

    def destroy 
        @litigation = Litigation.find(params[:id])
        @litigation.destroy
    end

    private

    def litigation_params
        params.require(:litigation).permit(:lawyer_id, :caption, :court, :judge, :opposing_party, :status, :costs)
    end

end
