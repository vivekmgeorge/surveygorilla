get '/' do
  @users = User.all
  @survey = Survey.all
  erb :index
end

post "/surveys" do
  @info = params[:survey]
  survey = Survey.create(name: @info[:title])
  survey.questions.create(question: @info[:question], choice1: @info[:choice1],
    choice2: @info[:choice2], choice3: @info[:choice3] )

  redirect '/'
end

get '/surveys/new' do

  erb :"surveys/new"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])

  erb :"surveys/show"
end

post '/results' do
  user = User.find(session[:user_id])
  results = params[:question]

  results.each do |question_id, answer|
    user.responses.create(response: answer, question_id: question_id)
  end
  redirect '/survey_results'
end

get '/survey_results' do
  user = User.find(session[:user_id])
  @results = user.responses
  p "XXXXXXXXXXXXX"
  p @results
  p "XXXXXXXXXXXXX"
  erb :"surveys/show_results"
end
