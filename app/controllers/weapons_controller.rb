class WeaponsController < ApplicationController

  before_action :set_weapon

  def index
    @weapons = Weapon.all
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def show
    @weapon = Weapon.find(params[:id])
  end

  def update
    if @weapon.update(weapon_params)
      render json: @weapon, status: :ok
    else
      render json: {errors: @weapon.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    @weapon.destroy
    head 204
  end

  private

  def weapon_params
    params.permit(:name, :pb, :ps, :level, :description, :xp)
  end

  def set_weapon
    @weapon = Weapon.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: {message: e.message}, status: :not_found
  end

end
