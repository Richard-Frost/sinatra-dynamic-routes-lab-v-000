require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @result = ""
    @number.times { |i| @result << "#{@phrase}\n" }
    @result
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      answer = @num1 + @num2
    elsif @operation == "subtract"
      answer = @num1 - @num2
    elsif @operation == "multiply"
      answer = @num1 * @num2
    elsif @operation == "divide"
      answer = @num1 / @num2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end