class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: t('message.user.create')
    else
      render "new"
    end
  end
  
  def index
    @users = User.all
  end
end
