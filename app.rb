require 'sinatra'
require 'sinatra/reloader' if development?

get '/**' do
  'maintaining stuff'
end