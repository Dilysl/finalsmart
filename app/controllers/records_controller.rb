class RecordsController < ApplicationController

	def index
		@user = current_user
		@records = current_user.records
		@goals = current_user.goals
		@sum = 0
		@record = current_user.records.build
	end

	def show
		@user = current_user
		@record = current_user.records.find(params[:id])
	end

	def new
		@user = current_user
		@record = current_user.records.build
	end

	def create
		@user = current_user
		@record = current_user.records.build(record_params)
		@record.user_id = @user.id
		if @record.save(record_params)
			@record = current_user.records.find(params[:id])
			redirect_to user_record_path
		else
			render :index
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def record_params
		params.require(:record).permit(:date, :amount, :description)
	end
end
