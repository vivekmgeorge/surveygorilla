user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password: "password")

survey = user.surveys.create(name: "survey 1")


10.times do
survey.questions << Question.create(question: Faker::Lorem.sentence, choice1: Faker::Lorem.word, choice2: Faker::Lorem.word, choice3: Faker::Lorem.word, choice4: Faker::Lorem.word)
end
