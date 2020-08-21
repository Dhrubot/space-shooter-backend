class User < ApplicationRecord
    has_many :games
    before_save { nickname.downcase! }

    def to_param
        nickname
    end
end
