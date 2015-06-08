class RecordsController < ApplicationController

	def index
		@user = current_user
		@records = current_user.records
		@goals = current_user.goals
		@sum = 0
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end
end
