class DateValidator < ActiveModel::Validator
	def validate(record)
		if record.arrival >= record.leaving
			record.errors[:base] << "Arrival date can not be grater or equal with leaving date"
		end
		if record.arrival <= Date.today
			record.errors[:base] << "Wrong arrival date"
		end
	end
end 

class Order < ActiveRecord::Base
	belongs_to :room
	validates_presence_of :room_id, :arrival, :leaving
	validates_associated :room
	validates_with DateValidator
end


