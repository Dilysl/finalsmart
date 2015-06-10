class HomeController < ApplicationController

	def index
		@records = Record.all
		@top = @records.order(amount: :desc).limit(5)
	end
	
end
