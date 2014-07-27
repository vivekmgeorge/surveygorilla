helpers do 

	def question_by_id(id)
		Question.find(id).question
	end
end