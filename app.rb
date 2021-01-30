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

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}" + " " + "#{params[:word2]}" + " " +
    "#{params[:word3]}" + " " + "#{params[:word4]}" + " " +
    "#{params[:word5]}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation].to_s
    @num = params[:number1].to_i
    @num2 = params[:number2].to_i
    "#{@num @op @num2}"
  end

end #end of class
