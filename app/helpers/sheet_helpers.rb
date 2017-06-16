helpers do
  def creator?
    session[:id] == @sheet.user_id
  end
end
