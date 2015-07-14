class AuthController < ApplicationController
  def login
    credentials = login_params
    user = User.find_by username: credentials[:username]
    if user && user.authenticate(credentials[:password])
      render json: user
    else
      head :bad_request
    end
  end

  def register
    @user = User.new(login_params.merge(password_confirmation: null))
    if @user.save!
      render json: @user
    else
      head :bad_request
    end
  end

  private

  def login_params
    params.require(:auth).permit(:username, :password, :email, :name_first, :name_first, :city, :state)
  end

end
