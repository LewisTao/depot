class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :cart_id
end
