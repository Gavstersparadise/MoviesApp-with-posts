module ApplicationHelper

	def signed_in?
       if session[:user_id].nil?
			return
	else
		@current_user = User.find_by_id(session[:user_id])
       end
  end
  
	def euro(amount)       #method with a formal paramenter no need for a datatype in ruby 
    number_to_currency(amount, :unit => "&euro;") # this is an entityreference
	end


end
