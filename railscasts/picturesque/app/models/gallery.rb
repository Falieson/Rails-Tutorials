class Gallery < ActiveRecord::Base
	has_many :paintings, :dependent => :destroy
end
