class MembersController < ApplicationController
  before_action :authenticate_member!

  private 
  def member_params
    params.require(:member).permit(:first_name, :last_name, pending_approvals_attributes:[:id, :status], reservations_attributes:[:id, :start_date, :end_date, :total_day])
  end
end
