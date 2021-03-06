class ReservationsController < ApplicationController

    private

    def reservation_params
        params.require(:reservation).permit(:start_date, :end_date, :total_day, :housing_id, :member_id, pending_approvals_attributes:[:id, :status])
    end
end