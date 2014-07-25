get '/' do
  @users = User.all
  @survey = Survey.all
  erb :index
end

post "/survey" do
  @info = params[:survey]
  survey = Survey.create(name: @info[:title])
  question = Question.create(question: @info[:question], choice1: @info[:choice1],
    choice2: @info[:choice2], choice3: @info[:choice3] )

  redirect '/'
end



