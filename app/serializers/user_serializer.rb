class UserSerializer < ActiveModel::Serializer
  attributes :id, :nickname
  has_many :games
end
