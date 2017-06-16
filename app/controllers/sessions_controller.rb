get '/session/logout' do
  logout
  redirect '/'
end

get '/session/login' do
  erb :'session/new'
end

post '/login' do
  @user = User.find_by(email:params[:email])

  if @user && User.authenticate(params[:email], params[:password])
    login(@user)
    redirect '/'

  elsif !@user
    @errors = ['Email invalid']
    erb :'session/new'

  elsif !User.authenticate(params[:email], params[:password])
    @errors = ['Password invalid']
    erb :'session/new'

  else
    @error = ['Something went wrong, try again']
    erb :'session/new'
  end
end
