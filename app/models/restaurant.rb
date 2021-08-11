class Restaurant < ApplicationRecord
    RESTAURAN_LIST = ["chinese", "italian", "japanese", "french", "belgian"]
    
    has_many :reviews, dependent: :destroy
    
    validates :name, :address, :category, presence: true
    validates_inclusion_of :category, :in => RESTAURAN_LIST
end
