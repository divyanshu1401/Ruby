class Article < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: { maximum: 50, minimum: 2,
    too_long: "%{count} characters is the maximum allowed",
    too_short: "%{count} characters is the minimum allowed"
}
    validates :title, length: { maximum: 50, minimum: 2,
        too_long: "%{count} characters is the maximum allowed",
        too_short: "%{count} characters is the minimum allowed"
    }
end