class Goal < ActiveRecord::Base
	belongs_to :user
	belongs_to :record

	validates :amount, presence: true
	validates :date, presence: true
end
