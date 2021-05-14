class RegistrationsController < Devise::RegistrationsController
  
  def after_sign_up_path_for(resource)
    edit_profil_path
  end
end