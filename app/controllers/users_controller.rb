get '/user/new' do
  erb :'users/new'
end

post '/user' do
  @user = User.new(params[:user])
  if @user.save
    login(@user)
    redirect '/'
  else
    @errors = @user.errors.full_messages
    erb :'users/new'
  end
end

get '/user/:id' do
  @user = User.find(params[:id])
  erb :'users/show'
end
