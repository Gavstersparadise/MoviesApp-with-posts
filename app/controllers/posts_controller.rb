class PostsController < ApplicationController
    before_filter :authorise  #makes sure someone is sign
	def create
		@movie = Movie.find params[:movie_id]
		if @movie 
		   @post = @movie.posts.create params[:post]
		   @post.user_id = @current_user.id  # sets the user_id fk
		   @post.save       # saves to the post table 
		 end
    
		respond_to do |format|
			format.html {redirect_to @movie}
		end
	end	
end
