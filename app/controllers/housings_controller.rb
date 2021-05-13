class HousingsController < ApplicationController

    def index 
    @housings = Housing.all
    end

    private 
    
    def housing_params
        params.require(:housing).permit(:address, :city, :zip, :img, pending_approvals_attributes:[:id, :status], reservations_attributes:[:id, :start_date, :end_date, :total_day])
    end
end