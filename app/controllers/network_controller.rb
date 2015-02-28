class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  def index
    @countries = Country.all
    @users = User.includes(:user_info).order("user_infos.first_name like '', user_infos.first_name").paginate(page: params[:page], per_page: 10)
    @users = User.joins(:user_info).where("user_infos.residence_country like :country", {:country => params[:country]}).order("user_infos.first_name like '', user_infos.first_name").paginate(page: params[:page], per_page: 10)
    @major_fields = UserInfo.select(:major_field_name).distinct
    @minor_fields = UserInfo.select(:minor_field_name).distinct
  end
end
