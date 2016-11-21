require 'sinatra'
require 'sinatra/reloader' if development?

get '/**' do
  @header = ENV['MAINTENANCE_HEADER'] || 'This app is undergoing maintenance.'
  @message = ENV['MAINTENANCE_MESSAGE'] || 'If you need help, join the <a href="https://pivotal.slack.com/messages/iad_app_status/">#iad_app_status</a> Slack channel or send an ask ticket.'
  erb :index
end