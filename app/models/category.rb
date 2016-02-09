class Category < ActiveRecord::Base
  has_many :blogs

  validates :name, :description, presence: true
end
