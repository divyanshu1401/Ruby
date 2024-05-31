class Reel < ApplicationRecord
    has_many :comments, as: :commentable
end
