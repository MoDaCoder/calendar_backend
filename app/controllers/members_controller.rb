class MembersController < ApplicationController
  before_action :authenticate_member!

  private 
  def member_params
  end
end
