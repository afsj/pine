class MajorField < ActiveRecord::Base
  validates :name, presence: true
  validates :code, presence: true
end
