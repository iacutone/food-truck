module Parser

	def north_south_street(data)
		data.scan(/53/).uniq.to_s || data.scan(/south/i).uniq.to_s
	end

	def east_west_street(data)
		data.scan(/park/i).uniq.to_s || data.scan(/liberty/i).uniq.to_s
	end 

	def string_cleaner(street_one, street_two)
		north_south_street = street_one.gsub('[', '').gsub(']','').gsub('"', '')
		east_west_street = street_two.gsub('[', '').gsub(']','').gsub('"', '')
		addressable(north_south_street, east_west_street)
	end

	def addressable(street_one, street_two)
		street_one + ' & ' + street_two + ', New York, New York'
	end

	# def street_for_database
	# 	uniq.to_s
	# end
end