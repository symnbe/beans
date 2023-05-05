class FavoritesController < ApplicationController

  def create
    @bean = Bean.find(params[:bean_id])
    favorite = current_user.favorites.new(bean_id: @bean.id)
    favorite.save
  end

  def destroy
    @bean = Bean.find(params[:bean_id])
    favorite = current_user.favorites.find_by(bean_id: @bean.id)
    favorite.destroy
  end


end