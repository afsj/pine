class NetworkController < ApplicationController
  before_filter :authenticate_user!, :except => [] 
  has_scope :country
  has_scope :major_field 
  has_scope :member_type
  has_scope :minor_field
  
  def index
    if (params[:member_type] == 'Student')
      @major_fields = UserInfo.select(:major_field_name).distinct.where(:member_type => 'Student')
      @countries = UserInfo.select(:residence_country).distinct.where(:member_type => 'Student')
      if (params.has_key?(:major_field))
        @minor_fields = UserInfo.select(:minor_field_name).distinct.where(:member_type => 'Student', :major_field_name => params[:major_field])
      else
        @minor_fields = UserInfo.select(:minor_field_name).distinct.where(:member_type => 'Student')
      end
    else
      @major_fields = UserInfo.select(:major_field_name).distinct.where(:member_type => 'Professional')
      @countries = UserInfo.select(:residence_country).distinct.where(:member_type => 'Professional')
      if (params.has_key?(:major_field))
        @minor_fields = UserInfo.select(:minor_field_name).distinct.where(:member_type => 'Professional', :major_field_name => params[:major_field])
      else
        @minor_fields = UserInfo.select(:minor_field_name).distinct.where(:member_type => 'Professional')
      end
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
