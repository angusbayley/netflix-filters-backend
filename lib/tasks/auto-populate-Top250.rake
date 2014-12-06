require 'open-uri'

namespace :db do
	desc "Fill db with sample data"
	task populate: :environment do
		@doc = Nokogiri::HTML(open("http://www.imdb.com/chart/top"))
		title_elements = @doc.css(".titleColumn > a")
		i = 1
		title_elements.each do |element|
			Top250.create!(position: i, name: element.text)
			i+=1
		end
	end
end