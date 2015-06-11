class Record < ActiveRecord::Base
	belongs_to :user

	validates :amount, presence: true
	validates :date, presence: true
end
