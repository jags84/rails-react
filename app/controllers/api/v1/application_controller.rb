class Api::V1::ApplicationController < ActionController::Base
  # include ControllerUtilities
  respond_to :json
  before_filter :check_format

  def check_format
    render :nothing => true, :status => 406 unless params[:format] == "json"
  end

end