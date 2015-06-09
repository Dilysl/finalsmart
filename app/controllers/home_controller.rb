class HomeController < ApplicationController

	def index
		@records = Record.all
		@top = @records.max_by(&:amount)

	end
	
end
