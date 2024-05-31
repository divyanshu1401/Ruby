class Cricketer < ApplicationRecord
    has_one_attached :image
    has_many_attached :pictures
    has_rich_text :body

    def image_as_thumbnail
        image.variant(resize_to_limit: [300,300]).processed
    end

    def pictures_as_thumbnail
        pictures.map do |picture|
            picture.variant(resize_to_limit: [150,150]).processed
        end
    end
end
