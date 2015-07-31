require_relative 'models/model.rb'
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do
    erb :index
  end 
  
#   get '/science_fiction' do
#     erb :science_fiction
#   end
  
#   get '/fantasy' do
#     erb :fantasy
#   end
  
#   get '/realistic_fiction' do
#     erb :realistic_fiction
#   end
#   @genre = "fantasy"
  
#   post '/model' do
#     genre1 = params[genre]
# #     @page_first = 
#     return_book(genre1)
# #     @link_amazon = 
#     return_amazon(genre1)
#     erb :results
#   end  
  
  post '/results' do
#     @page_first
#     @link_amazon
#     @genre
    all_books = {"SCIENCE FICTION" => {"legend" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/legend%20_zpszk75ngpi.png", "amazon_link" => "http://www.amazon.com/Legend-Marie-Lu/dp/014242207X/ref=sr_1_1?ie=UTF8&qid=1438220173&sr=8-1&keywords=legend"}, "ready player one" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/Ready%20Player%20One_zpsk69ycupa.png", "amazon_link" => "http://www.amazon.com/Ready-Player-One-Ernest-Cline/dp/0307887448/ref=sr_1_1?s=books&ie=UTF8&qid=1438220380&sr=1-1&keywords=ready+player+one"}, "the martian" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/the%20martian_zpssyyhrt8z.png", "amazon_link" => "http://www.amazon.com/Martian-Andy-Weir/dp/0553418025/ref=sr_1_1?s=books&ie=UTF8&qid=1438220481&sr=1-1&keywords=the+martian"}}, 
  
  "REALISTIC FICTION" => {"My Heart and Other Black Holes" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/my%20heart_zpsc2mjplbp.png", "amazon_link" => "http://www.amazon.com/My-Heart-Other-Black-Holes/dp/0062324675/ref=sr_1_1?s=books&ie=UTF8&qid=1438264502&sr=1-1&keywords=my+heart+and+other+black+holes"}, "Thirteen Reasons Why" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/13%20reasons%20why_zpsbzdhqc12.png", "amazon_link" => "http://www.amazon.com/Thirteen-Reasons-Why-Jay-Asher/dp/159514188X/ref=sr_1_1?s=books&ie=UTF8&qid=1438264548&sr=1-1&keywords=13+reasons+why"}, "We Were Liars" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/we%20were%20liars_zpsci0is2o9.png", "amazon_link" => "http://www.amazon.com/We-Were-Liars-E-Lockhart/dp/038574126X/ref=sr_1_1?s=books&ie=UTF8&qid=1438264601&sr=1-1&keywords=we+were+liars"}}, 
  
  "FANTASY" => {"mortal instruments" => {"first_page" =>"http://i909.photobucket.com/albums/ac297/samcc33101/mortal%20instruments_zpsplsv64wo.png", "amazon_link" => "http://www.amazon.com/City-Bones-Mortal-Instruments-Book/dp/1416955070"}, "red queen" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/red%20queen_zpspqk7zraa.png", "amazon_link" => "http://www.amazon.com/Red-Queen-Victoria-Aveyard/dp/0062310631/ref=sr_1_1?s=books&ie=UTF8&qid=1438250669&sr=1-1&keywords=red+queen"}, "maximum ride" => {"first_page" => "http://i909.photobucket.com/albums/ac297/samcc33101/maximum%20ride_zpsbpdmx9l0.png", "amazon_link" => "http://www.amazon.com/Angel-Experiment-Maximum-Ride-Novel/dp/0316067954/ref=sr_1_1?ie=UTF8&qid=1438264198&sr=8-1&keywords=maximum+ride"}}}

    genre1 = (params[:genre]).upcase
    @page_first = return_book(all_books, genre1)
    @link_amazon = return_amazon(all_books, genre1)
    erb :results
  end
  
#   get '/results' do
#     erb :results
#   end  
end