class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :email, :pay_type
end
