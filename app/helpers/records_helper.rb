module RecordsHelper
	def goal_completion(total, goal_amount)
		percent_complete = (total.to_f / goal_amount) * 100
		if percent_complete > 100
			100.0
			"Completed! Well done"
			if percent_complete == 50
				50.0
				"Half way there. Keep on saving!"
			end
		else
			percent_complete
		end
	end
end
