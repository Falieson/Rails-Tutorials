class EntriesController < ApplicationController
	respond_to :json

	def index
		respond_with Entry.all
	end

	def show
		respond_with Entry.find(params[:id])
	end

	def create
		@entry = Entry.new(entry_params)
		@entry.save
		respond_with @entry

	end

	def update
		@entry = Entry.find(params[:id])
		respond_with @entry.update(entry_params)
	end

	def destroy
		respond_wtih Entry.destroy(params[:id])
	end


	private

	def entry_params
		params.require(:entry).permit(:name, :winner)
	end


end
