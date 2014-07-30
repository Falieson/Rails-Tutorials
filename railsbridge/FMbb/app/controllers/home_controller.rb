class HomeController < ApplicationController
	def index
		@topics = Topic.all
		render :template => "topics/index"
	end
	
end
