post '/sheets/:sheet_id/cheats' do
  @sheet = Sheet.find(params[:sheet_id])
  @cheat = @sheet.cheats.new(params[:cheat])

  if @cheat.save
    redirect "/sheets/#{params[:sheet_id]}/cheats"
  else
    erb :'cheats/new'
  end

end

get '/sheets/:sheet_id/cheats' do
  @sheet = Sheet.find(params[:sheet_id])
  erb :'cheats/index', locals: {sheet:@sheet}
end

get '/sheets/:sheet_id/cheats' do
  erb :'cheats/index'
end
