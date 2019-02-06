require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @number.times do
      "#{@phrase}\n"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @arr = []
    @arr << params[:word1]
    @arr << params[:word2]
    @arr << params[:word3]
    @arr << params[:word4]
    @arr << params[:word5]
    "#{@arr.join(' ')}"
  end

# (add, subtract, multiply or divide)
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    if operation == "add"
    elsif operation == "subtract"
    elsif operation == "multiply"
    elsif operation == "divide"
    end 
  end
end
