get '/sessions/logout' do
  logout
  redirect '/'
end

get '/sessions/login' do
  erb :'sessions/new'
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
