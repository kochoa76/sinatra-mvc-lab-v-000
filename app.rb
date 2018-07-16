require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/piglatinize" do
    PigLatinizer.new([params:user_phrase])
    end
end
