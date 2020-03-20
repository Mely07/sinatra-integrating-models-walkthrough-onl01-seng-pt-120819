require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
  @analyzed_text = TextAnalyzer.new(params[:user_text])
 
  erb :results
  #using form input to initalize instance of TextAnalyzer class
  #instance and its methods saved to @analyzed_text can now be used in erb :result 
  end
end
