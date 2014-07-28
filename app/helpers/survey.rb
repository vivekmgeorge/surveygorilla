helpers do 
	def percentage_of_responses(question_id, choice)
		question = Question.find(question_id)
		choice_length = question.responses.where(response: choice).length
		response_length = question.responses.length
		percentage = (choice_length.to_f / response_length.to_f).round(2)
	end

	def question_by_id(id)
		Question.find(id).question
	end
end