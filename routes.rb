require 'bcrypt'
get "/" do
    erb :index
end

get "/signup" do
    erb :signup
end

get "/signin" do
    erb :signin
end

get "/signup/success" do
    erb :reg_success
end

post "/register" do
  password_salt = BCrypt::Engine.generate_salt
#   puts "Password #{params[:user]["password"]}"
  password_hash = BCrypt::Engine.hash_secret(params[:user]["password"], password_salt)
  params[:user]["password"] = password_hash
    @signup_response = User.new(params[:user])
    if @signup_response.save
        redirect '/signup/success'
    else
        "Sorry, there was an error!"
    end
end