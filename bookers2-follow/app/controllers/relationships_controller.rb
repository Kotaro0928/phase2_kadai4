class RelationshipsController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find(params[:user_id])
    follower = @user.follower.new(user_id: current_user.id)
    follower.save
    redirect_to 'user/index'
  end

  def destroy
  end
end
