require 'sinatra'
require 'yahoo_weatherman'

def determine_weather(location)
	client = Weatherman::Client.new
	weather = client.lookup_by_location(location).condition['text']
	return weather
end

def determine_location(location)
	client = Weatherman::Client.new
	location_info = client.lookup_by_location(location).location
	city = location_info['city'].capitalize
	state = location_info['region'].upcase
	country = location_info['country'].capitalize
	final_location = "#{city}, #{state}, #{country}"
end

get '/' do
	erb :home
end

post '/weather' do
	@post = params[:post]["location"]
	@weather = determine_weather(@post)
	@location = determine_location(@post)
	
	"#{@weather}"
	
	case @weather
	when 'sunny'
		erb :sunny
	when 'cloudy'
		erb :cloudy
	when 'snowy'
		erb :snowy
	when 'fair'
		erb :fair
	when 'partly cloudy'
		erb :partly_cloudy
	else
		erb :default
	end
end