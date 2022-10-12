class Movie < ApplicationRecord


def self.upcoming
  order("starts_at desc")
end

  def free?
    price.blank? || price.zero?
 end



 validates :name, presence: true

#  validates :description, length: { minimum:15 }

#  validates :price, numericality: { greater_than_or_equal_to: 0 }

#  validates :capacity, numericality: { only_integer: true, greater_than: 0 }

#  validates :image_file_name, format: 
#        { with: /\w+\.(jpg|png)\z/,
       
#        message: "must be a JPG OR PNG "
#        }
end

