get '/' do
  @users = User.all
  @survey = Survey.all
  erb :index
end

post "/surveys" do
  # @user = User.find(session[:user_id])
  # @survey = @user.surveys.create(params[:survey])
  p "*" * 50
  p params[:survey]
  p params[:question]
  p params[:num_questions]
  p "*" * 50
  # @questions = @survey.questions.create(params[:question])
  # @questions = @survey.questions
  # question.create()
  # redirect '/surveys/new'
  # erb :'surveys/_question', :layout => false
end

get '/surveys/new' do

  erb :"surveys/new"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])

  erb :"surveys/show"
end

post '/surveys/:id/results' do
  user = User.find(session[:user_id])
  results = params[:question]

  results.each do |question_id, answer|
    user.responses.create(response: answer, question_id: question_id)
  end
  redirect "/surveys/#{params[:id]}/results"
end

get '/surveys/:id/results' do
  @user = User.find(session[:user_id])
  @results = @user.responses
  erb :"surveys/show_results"
end

delete '/surveys/:id' do
  Survey.find(params[:id]).destroy
  redirect "/user/home"
end
