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
		@record = current_user.records.create
	end

	def create
		@user = current_user
		@record = current_user.records.create(record_params)
		@record.user_id = @user.id
		if @record.save(record_params)
			redirect_to user_record_path
		else
			render :index
		end
	end

	def edit
		@user = current_user
		@record = current_user.records.find(params[:id])
	end

	def update
		@user = current_user
		@record = current_user.recordss.find(params[:id])
		if @record.update(record_params)
			redirect_to user_record_path
		else
			render :edit
		end
	end

	def destroy
		@user = current_user
		@record = @user.records.find(params[:id])

		@record.destroy
		redirect_to user_records_path
	end

	private
	def record_params
		params.require(:record).permit(:date, :amount, :description)
	end
end
