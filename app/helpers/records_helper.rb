module RecordsHelper
	def goal_completion(total, goal_amount)
		percent_complete = (total.to_f / goal_amount) * 100
		if percent_complete > 100
			100.0
		else
			percent_complete
		end
	end
end
