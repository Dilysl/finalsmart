class Record < ActiveRecord::Base
	belongs_to :user

	before_validation :default_values

	def default_values
		self.amount ||= 0
	end

	validates :amount, presence: true
	validates :date, presence: true
end
