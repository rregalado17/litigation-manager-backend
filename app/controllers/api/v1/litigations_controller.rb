class Api::V1::LitigationsController < ApplicationController

    # before_action :set_lawyer

    def index
        @litigations = Litigation.all
        render json: @litigations
    end

    # def create 
    #     @litigation = @lawyer.litigations.new(litigation_params)
    #     if @litigation.save
    #         render json: @lawyer
    #     else
    #         render json: {error: "Error creating litigation"}
    #     end
    # end

    def create 
        @litigation = Litigation.new(litigation_params)
        if @litigation.save
            render json: @litigation
        else
            render json: {error: "Error creating lawyer"}
        end
    end

    def show
        @litigation = @lawyer.litigations.find_by(id: params[:id])
        @litigation = Litigation.find(params[:id])
        render json: @litigation 
    end
    


    def destroy 
        @litigation = Litigation.find(params[:id])
        # @lawyer = Lawyer.find(@litigation.lawyer_id)
        @litigation.destroy
        render json: @lawyer
    end

    # def update
    #     binding.pry
    # end

    def update
        @litigation = Litigation.find(params[:id])
        # if @litigation.update(params)
        #     render json: user, status: :ok
        #   else
        #     render json: user.errors, status: :unprocessable_entity
        #   end
        @litigation.update(
            caption: params["litigation"]["caption"],
            court: params["litigation"]["court"], 
            judge: params["litigation"]["judge"],
            status: params["litigation"]["status"],
            lawyer_id: params["litigation"]["lawyer_id"],
            opposing_party: params["litigation"]["opposing_party"],
            complaint_date: params["litigation"]["complaint_date"],
            legal_areas: params["litigation"]["legal_areas"],
            governing_law: params['litigation']['governing_law'],
            industry: params['litigation']['industry'],
            claims: params['litigation']['claims'],
            counterclaims: params['litigation']['counterclaims']
            )
        @litigation.save
        render json: @litigation
    end

    private
    # def set_lawyer 
    #     @lawyer = Lawyer.find(params[:lawyer_id])
    # end

    def litigation_params
        params.require(:litigation).permit(
            :caption, 
            :court, 
            :judge, 
            :opposing_party, 
            :status, 
            :costs,
            :complaint_date,
            :legal_areas,
            :governing_law,
            :industry,
            :claims,
            :counterclaims,
            :lawyer_id
            )
    end
end
