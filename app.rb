%w(rubygems sinatra).each { |file| require file }
require File.dirname(__FILE__) + "/config/init"

post '/questions' do 
  @question = Question.new(params[:question])
  @question.send
  redirect ENV['ON_SEND']
end

get '/' do
  redirect ENV['REDIRECT_TO']
end 

