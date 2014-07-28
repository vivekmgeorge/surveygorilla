get '/' do
  @users = User.all
  @survey = Survey.all
  erb :index
end

post "/surveys" do
  @user = User.find(session[:user_id])
  @survey = @user.surveys.create(params[:survey])
  p params[:num_questions]
  p num_questions = params[:num_questions].to_i
  
  for i in 1..num_questions do
    name = ("question" + i.to_s).to_sym
    @survey.questions.create(params[name])
  end

  redirect '/'
end

get '/surveys/new' do

  erb :"surveys/new"
end

get '/surveys/:id' do
  @survey = Survey.find(params[:id])

  erb :"surveys/show"
end

post '/surveys/:id/results' do
  @user = User.find(session[:user_id])
  @survey = Survey.find(params[:id])
  @responses = []
  results = params[:question]
  results.each do |question_id, answer|
    @responses << @user.responses.create(response: answer, question_id: question_id)
  end
  erb :"surveys/results/user"
end

get '/surveys/:id/results/user' do
  @user = User.find(session[:user_id])
  @survey = Survey.find(params[:id])
  @responses = @survey.responses.where(user_id: @user.id)
  erb :"surveys/results/user"
end

get '/surveys/:id/results/all' do
  @survey = Survey.find(params[:id])
  @survey_length = @survey.questions.length
  @questions = @survey.questions
  erb :"surveys/results/all"
end

delete '/surveys/:id' do
  Survey.find(params[:id]).destroy
  redirect "/user/home"
end
