require 'kconv'
require 'open-uri'

namespace :db do
	desc "Fill db data"
	task populate: :environment do
		update_IMDB_top_250
		update_RT_top_100
	end
end

def update_IMDB_top_250
	@doc = Nokogiri::HTML(open("http://www.imdb.com/chart/top"))
	title_elements = @doc.css(".titleColumn > a")
	i = 1
	title_elements.each do |element|
		Top250.create!(position: i, name: element.text)
		i+=1
	end
	#some form of testing must be added
end

def update_RT_top_100
	puts "hiya!"
	@doc = Nokogiri::HTML(open("http://www.rottentomatoes.com/top/bestofrt/"))
	title_elements = @doc.xpath("//table[@class='table table-striped']/tr/td[3]/a")
	i = 1
	title_elements.each do |element|
		name_and_year = element.text().strip
	 	RtTop100.create!(position: i, name: name_and_year[0, name_and_year.length-7].toutf8)
		i+=1
	end	
	#some form of testing must be added
end