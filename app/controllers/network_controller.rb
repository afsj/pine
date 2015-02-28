class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => [] 
  has_scope :country
  has_scope :major_field 
  has_scope :member_type
  
  def index
    if (params[:member_type] == 'Student')
      @major_fields = UserInfo.select(:major_field_name).distinct.where(:member_type => 'Student')
      @countries = UserInfo.select(:residence_country).distinct.where(:member_type => 'Student')
    else
      @major_fields = UserInfo.select(:major_field_name).distinct.where(:member_type => 'Professional')
      @countries = UserInfo.select(:residence_country).distinct.where(:member_type => 'Professional')
    end
    
    unless (params.has_key?(:member_type))
      params[:member_type] = 'Professional'
    end
    
    @users = apply_scopes(User).all
                 .joins(:user_info)
                 .paginate(page: params[:page], per_page: 10)
                 .order("user_infos.first_name like '', user_infos.first_name")
  end
end
