user1 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
user2 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
user3 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
user4 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")
user5 = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")


for i in 1..5 do
	survey = user1.surveys.create(name: "survey #{i}")
	10.times do
		survey.questions << Question.create(question: Faker::Lorem.sentence, choice1: Faker::Lorem.word, choice2: Faker::Lorem.word, choice3: Faker::Lorem.word, choice4: Faker::Lorem.word)
	end
end


## all seeded data below is soley for the purpose of showing off high charts. this can and should be DRY'd up.
stella = User.create(name: "Stella", email: "stella@stella.com", password: "password")

test_survey = stella.surveys.create(name: "test survey")

question1 = test_survey.questions.create(question: Faker::Lorem.sentence, choice1: Faker::Lorem.word, choice2: Faker::Lorem.word, choice3: Faker::Lorem.word, choice4: Faker::Lorem.word)
question2 = test_survey.questions.create(question: Faker::Lorem.sentence, choice1: Faker::Lorem.word, choice2: Faker::Lorem.word, choice3: Faker::Lorem.word, choice4: Faker::Lorem.word)
question3 = test_survey.questions.create(question: Faker::Lorem.sentence, choice1: Faker::Lorem.word, choice2: Faker::Lorem.word, choice3: Faker::Lorem.word, choice4: Faker::Lorem.word)

user1.responses.create(question_id: question1.id, response: question1.choice1)
user1.responses.create(question_id: question2.id, response: question2.choice1)
user1.responses.create(question_id: question3.id, response: question3.choice1)

user2.responses.create(question_id: question1.id, response: question1.choice2)
user2.responses.create(question_id: question2.id, response: question2.choice2)
user2.responses.create(question_id: question3.id, response: question3.choice2)

user3.responses.create(question_id: question1.id, response: question1.choice3)
user3.responses.create(question_id: question2.id, response: question2.choice3)
user3.responses.create(question_id: question3.id, response: question3.choice3)

user4.responses.create(question_id: question1.id, response: question1.choice4)
user4.responses.create(question_id: question2.id, response: question2.choice4)
user4.responses.create(question_id: question3.id, response: question3.choice4)

user5.responses.create(question_id: question1.id, response: question1.choice1)
user5.responses.create(question_id: question2.id, response: question2.choice1)
user5.responses.create(question_id: question3.id, response: question3.choice3)

user5.responses.create(question_id: question1.id, response: question1.choice1)
user5.responses.create(question_id: question2.id, response: question2.choice2)
user5.responses.create(question_id: question3.id, response: question3.choice4)