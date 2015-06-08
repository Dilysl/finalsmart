class GoalsController < ApplicationController
	
	def new
		@user = current_user
		@goal = current_user.goals.build
	end

	def create
		@user = current_user
		@goal = current_user.goals.build(goal_params)
		@goal.user_id = @user.id
		if @goal.save(goal_params)
			redirect_to user_records_path
		else
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def goal_params
		params.require(:goal).permit(:date, :amount, :descriptiom)
	end
end
