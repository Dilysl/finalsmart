module RecordsHelper
	def goal_completion(total, goal_amount)
		percent_complete = (total.to_f / goal_amount) * 100
		if percent_complete > 100
			100.0
		elsif percent_complete == 50
			"#{percent_complete}"	
		else
			percent_complete
		end
	end
end
