class Record < ActiveRecord::Base
	belongs_to :user
	has_many :goals

	validates :amount, presence: true
	validates :date, presence: true
end
