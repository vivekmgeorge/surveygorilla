get '/' do
  @survey = Survey.all
  erb :index
end
