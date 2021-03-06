require 'rubygems'
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb "This is the Main Page!"
end

get '/claire' do
  erb :claire
end

get '/zoe' do
  erb :zoe
end

get '/dad' do
	erb :dad
end


# configure do
#   enable :sessions
# end
#
# helpers do
#   def username
#     session[:identity] ? session[:identity] : 'Hello stranger'
#   end
# end
#
# before '/secure/*' do
#   if !session[:identity] then
#     session[:previous_url] = request.path
#     @error = 'Sorry guacamole, you need to be logged in to visit ' + request.path
#     halt erb(:login_form)
#   end
# end

# get '/login/form' do
#   erb :login_form
# end
#
# post '/login/attempt' do
#   session[:identity] = params['username']
#   where_user_came_from = session[:previous_url] || '/'
#   redirect to where_user_came_from
# end
#
# get '/logout' do
#   session.delete(:identity)
#   erb "<div class='alert alert-message'>Logged out</div>"
# end
#
#
# get '/secure/place' do
#   erb "This is a secret place that only <%=session[:identity]%> has access to!"
# end
