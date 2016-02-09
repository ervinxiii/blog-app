class Blog < ActiveRecord::Base
  belongs_to :category

  validates :category, :title, :body, presence: true
end
