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
