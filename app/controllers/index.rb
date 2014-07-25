get '/' do
  @users = User.all
  erb :index
end

post "/surveys" do
  @info = params[:survey]
  survey = Survey.create(name: @info[:title])
  question = Question.create(question: @info[:question], choice1: @info[:choice1],
    choice2: @info[:choice2], choice3: @info[:choice3] )

  redirect '/'
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])

  erb :"surveys/show"
end

post '/results' do
  # p params[:question]
  user = User.find(session[:id])
  results = params[:question]
  results.each do |result|
    user.responses.create(response: result)
  end
  redirect '/survey_results'
end

get '/survey_results'
  user = User.find(session[:id])
  @results = user.responses.all
  erb :"surveys/show_results"
end
