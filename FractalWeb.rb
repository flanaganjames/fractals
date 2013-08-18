require 'rubygems'
require 'sinatra'
require 'daemons'
require 'fractals'
require 'RMagick'


get '/' do
    erb:showwelcome
end

post '/gettingfractals' do

    $task = Thread.new {
        $aWordfriend.wordfind
        #call '/results'
        #redirect '/results'
        #task.join
        erb:showresults
    }
    erb:newwelcome
    #$task.join
end


