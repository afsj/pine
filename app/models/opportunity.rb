class Opportunity < ActiveRecord::Base
  belongs_to :opportunity_category
  belongs_to :user
  validates :organization, presence: true
  validates :title, presence: true
  validates :location_country, presence: true
  validates :location_city, presence: true
  validates :contact_details, presence: true
  validates :deadline, presence: true
  validates :post_type, presence: true
end
