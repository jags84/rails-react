class Api::V1::PackagesController < Api::V1::AuthenticateController
  # Users Packages
  def index
    @packages = Package.where(user_id: current_user.id)
  end
  
  # Create Package
  def create
    
  end
end