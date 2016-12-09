class UsersController < ApplicationController
  def index
    @users = User.page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
  end

  def my_invites
  @users = current_user
  @choice = Choice.new
  @guest = Guest.new


  render("users/my_invites.html.erb")
end
end
