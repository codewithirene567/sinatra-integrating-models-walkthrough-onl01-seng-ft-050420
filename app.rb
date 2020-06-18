require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    text_from_user = params[:user_text]

    
    @your_text_analysis = params[:your_text_analysis]
    @number_of_words = params[:number_of_words]
    @vowels = params[:vowels]
    @consonants = params[:consonants]
    @most_common_letter = params[:most_common_letter]
    @used_times = params[:used_times]
    @analyzed_text = TextAnalyzer.new(text_from_user)
    # we can shorten this to @analyzed_text = TextAnalyzer.new(params[:user_text])
    erb :results
  end
end
