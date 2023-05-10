class SearchesController < ApplicationController
  def index
    if params[:word].present?
      if current_user.admin?
        @users = User.released
      else
        @users = User.released.where.not(id: current_user.id)
      end
      @users = @users.where("name LIKE ?", "%#{params[:word]}%").order(created_at: :desc)
      @beans = Bean.where("bean_name LIKE ?", "%#{params[:word]}%").order(created_at: :desc)
      @stores = Store.where("store_name LIKE ? OR address LIKE ?", "%#{params[:word]}%", "%#{params[:word]}%").order(created_at: :desc)
    end
  end


end