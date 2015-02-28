class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => []  
  def index
    @countries = Country.all
    @users = User.includes(:user_info).order("user_infos.first_name like '', user_infos.first_name")
    @major_fields = UserInfo.select(:major_field_name).distinct
    @minor_fields = UserInfo.select(:minor_field_name).distinct
  end
end
