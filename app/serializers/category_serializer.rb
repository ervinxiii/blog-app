class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :description

  has_many :blogs, embed: :ids, include: true
end
