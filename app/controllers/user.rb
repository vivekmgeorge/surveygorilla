#to sign up and login page

get "/user/login_signup" do
  erb :"user/login"
end

# will direct the user to their homepage after signing in
post "/user" do
  @user = User.find_by(email: params[:user][:email])
  if @user && @user.authenticate(password: params[:user][:password])
    session[:user_id] = @user.id
    redirect "/user/home"
  else
    redirect "/user/login_signup"
  end
end

# will redirect a user page to homepage afte signing up
post "/user/new" do
  @user = User.create(params[:user])
  if @user && @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect "/user/home"
  else
    redirect "/user/login_signup"
  end
end

# logout
get '/user/logout' do
  session[:user_id] = nil
  redirect '/'
end
# take user to thier homepage
get "/user/home" do
  erb :"user/home"
end
