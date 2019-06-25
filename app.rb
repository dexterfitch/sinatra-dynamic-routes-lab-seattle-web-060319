require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    @sum = @number * @number
    "#{@sum}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    full_phrase = ""
    @number.times do
      full_phrase.concat(@phrase + "\n")
    end
    "#{full_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      @total = @number1 + @number2
    when "subtract"
      @total = @number1 - @number2
    when "multiply"
      @total = @number1 * @number2
    when "divide"
      @total = @number1 / @number2
    end

    "#{@total}"
  end
end