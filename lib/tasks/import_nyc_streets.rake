desc 'Import NYC street names'
require 'pry'

task(:import_nyc_streets) do
	File.open(Rails.root.join('db', 'seeds', 'snd14Bcow.txt')).readlines.each do |line|
	   binding.pry
	end
end