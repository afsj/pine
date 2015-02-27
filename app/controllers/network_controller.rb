class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  def index
    @countries = Country.all
    @user = User.includes(:user_info)
  end
end
