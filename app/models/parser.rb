module Parser

	def andysitalianice_north_south_street(data)
		data.scan(/south/i).db_format && data.scan(/broadway/i).db_format unless tommorrow_filter(data) == ''
	end

	def andysitalianice_east_west_street(data)
		data.scan(/liberty/i).db_format && data.scan(/61st/).db_format 
	end 

	def biandangnyc_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/north/i).db_format 
	end

	def biandangnyc_east_west_street(data)
		data.scan(/53rd/i).db_format && data.scan(/vesey/i).db_format 
	end 

	def waffletruck_north_south_street(data)
		data.scan(/broadway/i).db_format 
	end

	def waffletruck_east_west_street(data)
		data.scan(/66th/).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/6th/).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/52nd/).db_format && data.scan(/50th/).db_format  && data.scan(/49th/).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/madison/i).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/55th/).db_format && data.scan(/47th/).db_format 
	end 

	def blend_express_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/madison/i).db_format 
	end

	def blend_express_east_west_street(data)
		data.scan(/55th/).db_format && data.scan(/47th/).db_format 
	end 

	def chinese_mirch_north_south_street(data)
		data.scan(/madison/i).db_format 
	end

	def chinese_mirch_east_west_street(data)
		data.scan(/47th/).db_format  
	end 

	def treats_truck_north_south_street(data)
		data.scan(/bway/i).db_format 
	end

	def treats_truck_east_west_street(data)
		data.scan(/87th/).db_format   
	end 

	def taim_mobile_north_south_street(data)
		data.scan(/5th/).db_format 
	end

	def taim_mobile_east_west_street(data)
		data.scan(/20th/).db_format && data.scan(/19th/).db_format  
	end

	def taco_bite_north_south_street(data)
		data.scan(/broadway/i).db_format && data.scan(/park/i).db_format
	end

	def taco_bite_east_west_street(data)
		data.scan(/67th/).db_format  && data.scan(/38th/).db_format && data.scan(/47th/).db_format && data.scan(/53/).db_format
	end

	def sweetery_nyc_north_south_street(data)
		data.scan(/hudson/i).db_format && data.scan(/park/i).db_format && data.scan(/irving/i).db_format
	end

	def sweetery_nyc_east_west_street(data)
		data.scan(/king/i).db_format  && data.scan(/52nd/).db_format && data.scan(/15th/).db_format
	end  

	def steaks_crepes_north_south_street(data)
		data.scan(/6th/).db_format && data.scan(/hudson/i).db_format 
	end

	def steaks_crepes_east_west_street(data)
		data.scan(/50th/).db_format  && data.scan(/46th/).db_format && data.scan(/king/i).db_format
	end 

	def souvlaki_truck_north_south_street(data)
		data.scan(/park/i).db_format && data.scan(/north/i).db_format 
	end

	def souvlaki_truck_east_west_street(data)
		data.scan(/47th/).db_format  && data.scan(/vesey/i).db_format 
	end

	def kimchi_truck_north_south_street(data)
		data.scan(/hudson/i).db_format && data.scan(/6th/).db_format && data.scan(/varick/i).db_format 
	end

	def kimchi_truck_east_west_street(data)
		data.scan(/charlton/i).db_format  && data.scan(/55/).db_format && data.scan(/grand/i).db_format 
	end 

	def seoul_food_north_south_street(data)
		data.scan(/5th/).db_format && data.scan(/fifth/i).db_format && data.scan(/mercer/i).db_format || data.scan(/park/i).db_format 
	end

	def seoul_food_east_west_street(data)
		data.scan(/20th/).db_format && data.scan(/18th/).db_format && data.scan(/4th/).db_format && data.scan(/47/).db_format
	end 

	def schnitz_things_north_south_street(data)
		data.scan(/north/i).db_format && data.scan(/6th/).db_format && data.scan(/park/i).db_format
	end

	def schnitz_things_east_west_street(data)
		data.scan(/vesey/i).db_format && data.scan(/49th/).db_format && data.scan(/51st/).db_format
	end       

	def uncle_gussys_north_south_street(data)
		data.scan(/park/i).db_format 
	end

	def uncle_gussys_east_west_street(data)
		data.scan(/51st/i).db_format 
	end

	def rickshawbar_north_south_street(data)
		data.scan(/times/i).db_format 
	end

	def rickshawbar_east_west_street(data)
		data.scan(/square/i).db_format 
	end  

	def phils_steaks_north_south_street(data)
		data.scan(/madison/i).db_format && data.scan(/north/i).db_format  
	end

	def phils_steaks_east_west_street(data)
		data.scan(/47th/i).db_format && data.scan(/vesey/i).db_format 
	end   

	def palenque_north_south_street(data)
		data.scan(/3/i).db_format && data.scan(/north/i).db_format && data.scan(/king/i).db_format && data.scan(/park/i).db_format
	end

	def palenque_east_west_street(data)
		data.scan(/14/i).db_format && data.scan(/vesey/i).db_format && data.scan(/charlton/i).db_format && data.scan(/47/i).db_format
	end

	def nuchas_north_south_street(data)
		data.scan(/north/i).db_format && data.scan(/6th/i).db_format && data.scan(/5th/i).db_format && data.scan(/park/i).db_format
	end

	def nuchas_east_west_street(data)
		data.scan(/vesey/i).db_format && data.scan(/50th/i).db_format && data.scan(/20th/i).db_format && data.scan(/47/i).db_format
	end         

	def string_cleaner(street_one, street_two)
		north_south_street = street_one.gsub('[', '').gsub(']','').gsub('"', '')
		east_west_street = street_two.gsub('[', '').gsub(']','').gsub('"', '')
		addressable(north_south_street, east_west_street)
	end

	def addressable(street_one, street_two)
		street_one + ' & ' + street_two + ', Manhattan, NY'
	end

	def db_format
		first.to_s
	end

	def format_time(time)
		Time.parse(time)
	end

	def tommorrow_filter(data)
		if data.scan(/tomorrow/i) == true
			return ''
		end
	end
end
