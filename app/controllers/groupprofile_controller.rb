class GroupprofileController < ApplicationController
  before_action :set_group 

  def profile
  end


  private

  def set_group
    @group = Group.friendly.find(params[:id])
  end

end
