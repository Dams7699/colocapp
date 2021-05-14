class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  
  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  def after_sign_in_path_for(resource)
    if current_user = User.new
      stored_location_for(resource) || edit_profil_path
    else
      redirect_to colocations_path
    end
  end
  

end
