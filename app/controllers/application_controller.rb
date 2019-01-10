require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @team = SuperHeroTeam.new(params[:team])
        params[:team][:members].each { |member| SuperHero.new(member) }
        erb :team
    end
end
