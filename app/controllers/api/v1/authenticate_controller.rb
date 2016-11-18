class Api::V1::AuthenticateController < ActionController::Base
  
  respond_to :json
  before_filter :check_format
  before_filter :authenticate_user!
  
  def check_format
    render :nothing => true, :status => 406 unless params[:format] == "json"
  end

end
