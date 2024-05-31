class Product < ApplicationRecord
    default_scope { where.not(name: nil) }
    scope :first_two_products, -> {limit(2)}
    scope :in_stock, -> { where('id > 4') }
end
