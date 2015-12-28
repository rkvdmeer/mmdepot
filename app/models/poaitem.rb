class Poaitem < ActiveRecord::Base
	has_and_belongs_to_many :poas
	has_many :artists, through: :poaitems_artists
end
