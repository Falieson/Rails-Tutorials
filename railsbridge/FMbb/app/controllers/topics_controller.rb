class TopicsController < ApplicationController
	def index
		@topics = Topic.all
	end


	def new
		@topic = Topic.new
	end

	def create
		@topic = Topic.new(topic_params)
		@topic.user_id = current_user.id
		if @topic.save
			redirect_to @topic
		else
			render 'new'
		end
	end

	def topic_params
		params.require(:topic).permit(:title, :description)
	end

	def show
		@topic = Topic.find(params[:id])
	end

	def edit
		@topic = Topic.find(params[:id])
	end

	def update
		@topic = Topic.find(params[:id])
		if @topic.update_attributes(topic_params)
			redirect_to topics_path
		else
			render 'edit'
		end
	end



end
