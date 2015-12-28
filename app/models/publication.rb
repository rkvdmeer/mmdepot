class Publication < ActiveRecord::Base
	has_many :poaitems
	has_and_belongs_to_many :artists
end
