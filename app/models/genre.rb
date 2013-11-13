class Genre < ActiveRecord::Base
    has_many :movies          
    validates :name, presence: true	# validates that name cannot be null 
end
