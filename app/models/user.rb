class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :opportunities
  has_one :user_info
  has_many :bookmarks
  
  scope :country, -> country { where("user_infos.residence_country = ?", country) }
  scope :major_field, -> major_field { where("user_infos.major_field_name = ?", major_field) }
  scope :member_type, -> member_type{ where("user_infos.member_type = ?", member_type) }
end
