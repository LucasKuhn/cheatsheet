get '/' do
  if logged_in?
    redirect '/sheets'
  else
    redirect '/user/new'
  end
end
