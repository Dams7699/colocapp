class ProfilsController < ApplicationController

  def show
  end

  def edit
  end

  def update
    current_user.update(profil_params)
  end

  private

  def profil_params
    params.require(:user).permit(:first_name, :last_name, { goal_ids: []}, {hobby_ids: []}, { personality_ids: []})
  end
end
