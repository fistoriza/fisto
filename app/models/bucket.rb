class Bucket < ActiveRecord::Base
  validates :item, presence: true
  validates :description, presence: true
end
