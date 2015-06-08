class GoalsController < ApplicationController

	def show
		@user = current_user
		@goal = current_user.goals.find(params[:id])
	end
	
	def new
		@user = current_user
		@goal = current_user.goals.build
	end

	def create
		@user = current_user
		@goal = current_user.goals.build(goal_params)
		@goal.user_id = @user.id
		if @goal.save(goal_params)
			redirect_to user_goal_path
		else
			render :new
		end
	end

	def edit
		@user = current_user
		@goal = current_user.goals.find(params[:id])
	end

	def update
		@user = current_user
		@goal = current_user.goals.find(params[:id])
		if @goal.update(goal_params)
			redirect_to user_goal_path
		else
			render :edit
		end
	end

	def destroy
	end

	private
	def goal_params
		params.require(:goal).permit(:date, :amount, :descriptiom)
	end
end
