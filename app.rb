require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    return @name.reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    (@number * @number).to_s 
  end

  get '/say/:number/:phrase' do 
# final_string = ""
# (params[:number].to_i).times
# final_string += "#{params[:phrase]}"
    number = params[:number].to_i
    @phrase = params[:phrase]
    (@phrase * number).to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  
  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1]
    number2 = params[:number2]
    if operation == "multiply"
      (number2 * number1).to_s
    elsif operation == "divide"
      (number2 / number1).to_s
    elsif operation == "add"
      (number1 + number2).to_s
    elsif operation == "subtract"
      (number1 - number2).to_s
    else
      puts "I cannot do that operation"
    end
  end
end
