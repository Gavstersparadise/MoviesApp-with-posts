class Movie < ActiveRecord::Base
     belongs_to:genre             #one movie one genre
	 has_many :posts
     validates :title,  presence: true	 
	 validate :must_haveValidTrailer
	 
	 def must_haveValidTrailer
	  unless trailer.include?("<iframe")
	   errors.add(:trailer, "Must include an iframe tag")
	 end
	  
    end
	  
end

