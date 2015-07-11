class Opportunity < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :opportunity_category
  belongs_to :user
  validates :organization, presence: true
  validates :title, presence: true
  validates :location_country, presence: true
  validates :location_city, presence: true
  validates :contact_details, presence: true
  validates :deadline, presence: true
  validates :post_type, presence: true
  
  scope :post_type, -> post_type { where("opportunities.post_type = ?", post_type) }
  scope :opportunity_category, -> opportunity_category { where("opportunities.opportunity_category_id = ?", opportunity_category) }
end
