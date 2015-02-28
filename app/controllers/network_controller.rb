class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => [] 
  has_scope :country
  has_scope :major_field 
  def index
    @major_fields = UserInfo.select(:major_field_name).distinct
    @minor_fields = UserInfo.select(:minor_field_name).distinct
    
    @users = apply_scopes(User).all
                 .joins(:user_info)
                 .paginate(page: params[:page], per_page: 10)
                 .order("user_infos.first_name like '', user_infos.first_name")
  end
end
