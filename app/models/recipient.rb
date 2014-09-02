class Recipient < ActiveRecord::Base
  belongs_to :user
  has_many :occasions

  accepts_nested_attributes_for :occasions
end
