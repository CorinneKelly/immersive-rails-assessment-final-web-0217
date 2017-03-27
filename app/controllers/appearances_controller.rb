class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to @appearance.episode
    else
      flash[:notice] = "Was not able to successfully create appearance"
      redirect_to new_appearance_path
    end
  end

  def edit
    @appearance = Appearance.find_by(id: params[:id])
  end

  def update
    @appearance = Appearance.find_by(id: params[:id])
    byebug
    if @appearance.update(rating: appearance_params[:rating])
      redirect_to @appearance.episode
    else
      flash[:notice] = "Was not able to successfully update"
      redirect_to edit_appearance_url
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:guest_id, :episode_id, :user_id, :rating)
  end

end
