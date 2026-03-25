class RegistrationsController < ApplicationController
  allow_unauthenticated_access

  def new
    puts "**** registrations controller new action"
    @user = User.new
    puts "**** registrations controller new user"
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path, notice: "Driver added!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_url, notice: "User was successfully deleted."
  end

  private

  def user_params
    # Use strong parameters, ensuring password_confirmation is included
    params.require(:user).permit(:email_address, :password, :password_confirmation)
  end
end
