class Topic < ActiveRecord::Base
	belongs_to :user

	validates :title, length: { minimum: 5 }
	validates :description, length: { minimum: 50 }
end
