module Parser

	def north_south_street(data)
		data.scan(/park/).db_format || data.scan(/liberty/i).db_format
	end

	def east_west_street(data)
		data.scan(/53rd/).db_format || data.scan(/south/i).db_format
	end 

	def string_cleaner(street_one, street_two)
		north_south_street = street_one.gsub('[', '').gsub(']','').gsub('"', '')
		east_west_street = street_two.gsub('[', '').gsub(']','').gsub('"', '')
		addressable(north_south_street, east_west_street)
	end

	def addressable(street_one, street_two)
		street_one + ' & ' + street_two + ', New York, New York'
	end

	def db_format
		first.to_s
	end
end