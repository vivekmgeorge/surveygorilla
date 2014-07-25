#to sign up and login page
get "/user/login_signup" do
  erb :"user/login"
end

# will direct the user to their homepage after signing in
post "/user" do
  redirect "/user/home"
end

# will redirect a user page to homepage afte signing up
post "/user/new" do
  redirect "/"
end

# take user to thier homepage
get "/user/home" do
  erb :"user/home"
end
