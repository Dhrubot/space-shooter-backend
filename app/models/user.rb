class User < ApplicationRecord
    has_many :games
    before_save { nickname.downcase! }
end
