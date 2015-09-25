require 'sinatra'
require "sinatra/reloader"

class App < Sinatra::Base

  set :root, File.dirname(__FILE__)

  configure :development do
    register Sinatra::Reloader
  end

  configure do
    enable :logging
  end

  get '/' do
    erb :index, :locals => { :title => 'TODO Page title' }
  end

end