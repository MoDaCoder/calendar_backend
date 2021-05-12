class PendingApprovalController < ApplicationController

    private

    def pending_approval
        params.require(:pending_approval).permit(:status, :member_id, :housing_id, :reservation_id)
    end
end
