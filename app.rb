require 'sinatra'

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)

  configure :development do
    require "sinatra/reloader"
    register Sinatra::Reloader
    enable :logging
  end

  get '/' do
    erb :index, :locals => { :title => 'TODO Page title' }
  end

end