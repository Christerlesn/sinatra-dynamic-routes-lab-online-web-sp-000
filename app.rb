require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "This is the homepage. Every website needs a homepage."
  end
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

end
