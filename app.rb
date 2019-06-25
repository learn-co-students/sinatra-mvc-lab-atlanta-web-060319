require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do 
        piggy = PigLatinizer.new
        @latin = piggy.piglatinize(params[:user_phrase])
        erb :pig_display
    end


end