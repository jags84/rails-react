class UserPackagesController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user_packages = Package.where(user_id: current_user.id)
  end

  def create
    @user_package = Package.new(package_params)
    @user_package.user_id = current_user.id

    if @user_package.save
      render json: @user_package
    else
      render json: @user_package.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @user_package = Package.find(params[:id])
    @user_package.destroy
    head :no_content
  end

  private
  def package_params
    params.require(:user_package).permit(:shipping_status)
  end
end
