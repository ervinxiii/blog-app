class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :category_id
end
