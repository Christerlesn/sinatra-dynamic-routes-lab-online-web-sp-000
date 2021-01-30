require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "This is the homepage. Every website needs a homepage."
  end

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number' do
    @num = "#{params[:number].to_i}"
    @num
    # @num.times do |sentence|
    #   print "Sup"
    #end
  end

end #end of class
