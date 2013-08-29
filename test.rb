require 'csv'

task :trucks => :environment do
	CSV_HEADERS = ['id','name', 'twitter']
	CSV.open('trucks.csv','w') do |csv|
	 csv << CSV_HEADERS
	 Truck.find_each do |t|
	   csv << [
	     t.id,
	     t.name,
	     t.twitter
	   ]
	 end
	end
end