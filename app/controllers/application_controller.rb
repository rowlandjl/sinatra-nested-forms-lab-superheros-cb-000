require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do 
      erb :super_hero
    end 
    
    post '/teams' do 
      @team.name = params[:team][:name]
      @team.motto = params[:team][:motto]
      
      erb :team 
    end 


end
