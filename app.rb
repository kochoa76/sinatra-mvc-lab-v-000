require_relative 'config/environment'
require_relative 'models/piglatinizer'

class App < Sinatra::Base

  get "/" do
    erb :user_input
  end

  post "/user_input" do
    PigLatinizer.new(params:user_text)
    end
end
