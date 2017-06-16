get '/sheets' do
  @sheets = Sheet.all
  erb :'sheets/index'
end

post '/sheets/new' do
  @user = current_user
  @sheet = @user.sheets.new(params[:sheet])
  if @sheet.save
    redirect '/sheets'
  else
    @errors = ["There was a problem creating the Sheet"]
    erb :'sheets/index'
  end
end

get '/sheets/:id' do
  erb :'sheets/show'
end
