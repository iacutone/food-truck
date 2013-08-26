module Parser

	def andysitalianice_north_south_street(data)
		data.scan(/south/i).db_format && data.scan(/broadway/i).db_format
	end

	def andysitalianice_east_west_street(data)
		data.scan(/liberty/i).db_format && data.scan(/61/).db_format 
	end 

	def biandangnyc_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/north/i).db_format 
	end

	def biandangnyc_east_west_street(data)
		data.scan(/53/i).db_format && data.scan(/vesey/i).db_format 
	end 

	def waffletruck_north_south_street(data)
		data.scan(/broadway/i).db_format 
	end

	def waffletruck_east_west_street(data)
		data.scan(/66/).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/6/).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/52/).db_format && data.scan(/50/).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/madison/i).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/55/).db_format && data.scan(/47/).db_format 
	end 

	def blend_express_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/madison/i).db_format 
	end

	def blend_express_east_west_street(data)
		data.scan(/55/).db_format && data.scan(/47/).db_format 
	end 

	def chinese_mirch_north_south_street(data)
		data.scan(/madison/i).db_format 
	end

	def chinese_mirch_east_west_street(data)
		data.scan(/47/).db_format  
	end 

	def treats_truck_north_south_street(data)
		data.scan(/bway/i).db_format 
	end

	def treats_truck_east_west_street(data)
		data.scan(/86/).db_format   
	end 

	def taim_mobile_north_south_street(data)
		data.scan(/5th/).db_format 
	end

	def taim_mobile_east_west_street(data)
		data.scan(/20th/).db_format  
	end

	def taco_bite_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/park/i).db_format
	end

	def taco_bite_east_west_street(data)
		data.scan(/67/).db_format  && data.scan(/38/).db_format && data.scan(/47/).db_format && data.scan(/53/).db_format
	end

	def sweetery_nyc_north_south_street(data)
		data.scan(/hudson/i).db_format && data.scan(/park/i).db_format && data.scan(/irving/i).db_format
	end

	def sweetery_nyc_east_west_street(data)
		data.scan(/king/i).db_format  && data.scan(/52/).db_format && data.scan(/15/).db_format
	end  

	def steaks_crepes_north_south_street(data)
		data.scan(/6/).db_format && data.scan(/hudson/i).db_format 
	end

	def steaks_crepes_east_west_street(data)
		data.scan(/50/).db_format  && data.scan(/46/).db_format && data.scan(/king/i).db_format
	end 

	def souvlaki_truck_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/north/i).db_format 
	end

	def souvlaki_truck_east_west_street(data)
		data.scan(/47/).db_format  && data.scan(/vesey/i).db_format 
	end

	def kimchi_truck_north_south_street(data)
		data.scan(/hudson/i).db_format && data.scan(/6/).db_format && data.scan(/varick/i).db_format 
	end

	def kimchi_truck_east_west_street(data)
		data.scan(/charlton/i).db_format  && data.scan(/55/).db_format && data.scan(/grand/i).db_format 
	end 

	def seoul_food_north_south_street(data)
		data.scan(/5/).db_format && data.scan(/fifth/i).db_format && data.scan(/mercer/i).db_format || data.scan(/park/i).db_format 
	end

	def seoul_food_east_west_street(data)
		data.scan(/20/).db_format && data.scan(/18/).db_format && data.scan(/4/).db_format && data.scan(/47/).db_format
	end 

	def schnitz_things_north_south_street(data)
		data.scan(/north/i).db_format && data.scan(/6/).db_format && data.scan(/park/i).db_format
	end

	def schnitz_things_east_west_street(data)
		data.scan(/vesey/i).db_format && data.scan(/49/).db_format && data.scan(/51/).db_format
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

	def format_time(time)
		Time.parse(time)
	end
end
