class Room < ActiveRecord::Base
	has_many :orders
	validates_associated :orders
	validates_presence_of :room_type, :description, :price
	validates :price, numericality: { greater_than: 40 }
end
