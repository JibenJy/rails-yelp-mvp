class Review < ApplicationRecord
  RATING_LIST = [0,1,2,3,4,5]
  belongs_to :restaurant

  validates :rating, numericality: true
  validates :content, :rating, presence: true
  validates_inclusion_of :rating, :in => RATING_LIST
end
