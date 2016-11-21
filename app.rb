require 'sinatra'
require 'sinatra/reloader' if development?

get '/**' do
  @message = ENV['MAINTENANCE_MESSAGE'] || 'Under construction'
  erb :index
end