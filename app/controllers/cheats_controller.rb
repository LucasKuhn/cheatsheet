post '/cheat/new' do
  p params
  "Hello World"
  @cheat = Cheat.new(params[:cheat])
  if @cheat.save
    p "😳 "*30
    redirect '/cheat'
  else
    redirect '/cheat'
  end
end

get '/cheat' do
  # @cheats = Cheat.all #define instance variable for view
  erb :'cheats/index'
end
