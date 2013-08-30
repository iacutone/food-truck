module Parser

	def andysitalianice_north_south_street(data)
		data.scan(/south|broadway|park/i).db_format 
	end

	def andysitalianice_east_west_street(data)
		data.scan(/liberty|61|52nd/i).db_format  
	end 

	def biandangnyc_north_south_street(data)
		data.scan(/park|north end/i).db_format 
	end

	def biandangnyc_east_west_street(data)
		data.scan(/53rd|vesey/i).db_format  
	end 

	def waffletruck_north_south_street(data)
		data.scan(/broadway/i).db_format 
	end

	def waffletruck_east_west_street(data)
		data.scan(/66th/i).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/park|6th/i).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/52nd|50th|49th/i).db_format 
	end 

	def bigdsgrub_north_south_street(data)
		data.scan(/broadway|madison/i).db_format 
	end

	def bigdsgrub_east_west_street(data)
		data.scan(/55th|47th/i).db_format 
	end 

	def blend_express_north_south_street(data)
		data.scan(/broadway|madison/i).db_format  
	end

	def blend_express_east_west_street(data)
		data.scan(/55th|47th/i).db_format 
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
		data.scan(/87th/i).db_format   
	end 

	def taim_mobile_north_south_street(data)
		data.scan(/5th/i).db_format 
	end

	def taim_mobile_east_west_street(data)
		data.scan(/20th|19th/).db_format 
	end

	def taco_bite_north_south_street(data)
		data.scan(/broadway|park/i).db_format 
	end

	def taco_bite_east_west_street(data)
		data.scan(/67th|38th|47th|53/i).db_format  
	end

	def sweetery_nyc_north_south_street(data)
		data.scan(/hudson|park|irving/i).db_format 
	end

	def sweetery_nyc_east_west_street(data)
		data.scan(/king|52nd|15th/i).db_format  
	end  

	def steaks_crepes_north_south_street(data)
		data.scan(/6th|hudson/i).db_format 
	end

	def steaks_crepes_east_west_street(data)
		data.scan(/50th|46th|king/i).db_format  
	end

	def souvlaki_truck_north_south_street(data)
		data.scan(/park|north end/i).db_format  
	end

	def souvlaki_truck_east_west_street(data)
		data.scan(/47th|vesey/i).db_format  
	end

	def kimchi_truck_north_south_street(data)
		data.scan(/hudson|6th|varick/i).db_format 
	end

	def kimchi_truck_east_west_street(data)
		data.scan(/charlton|55|grand/i).db_format  
	end 

	def seoul_food_north_south_street(data)
		data.scan(/5th|fifth|mercer|park/i).db_format 
	end

	def seoul_food_east_west_street(data)
		data.scan(/20th|18th|4th|47/i).db_format 
	end 

	def schnitz_things_north_south_street(data)
		data.scan(/north end|6th|park/i).db_format 
	end

	def schnitz_things_east_west_street(data)
		data.scan(/vesey|49th|51st/i).db_format 
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
		data.scan(/madison|north end/i).db_format
	end

	def phils_steaks_east_west_street(data)
		data.scan(/47th|vesey/i).db_format 
	end   

	def palenque_north_south_street(data)
		data.scan(/3|north end|king|park/i).db_format 
	end

	def palenque_east_west_street(data)
		data.scan(/14|vesey|charlton|47/i).db_format 
	end

	def nuchas_north_south_street(data)
		data.scan(/north end|6th|5th|park/i).db_format 
	end

	def nuchas_east_west_street(data)
		data.scan(/vesey|50th|20th|47/i).db_format 
	end  

	def domo_taco_north_south_street(data)
		data.scan(/north end|park|broadway/i).db_format 
	end

	def domo_taco_east_west_street(data)
		data.scan(/vesey|47th|38th|53rd/i).db_format 
	end  

	def eddies_pizza_north_south_street(data)
		data.scan(/11th|5|3rd|hudson/i).db_format 
	end

	def eddies_pizza_east_west_street(data)
		data.scan(/26th|46|71st|king/i).db_format 
	end 

	def fishing_shrimp_north_south_street(data)
		data.scan(/6th|park|3rd||5th/i).db_format 
	end

	def fishing_shrimp_east_west_street(data)
		data.scan(/50th|53rd|47th|23rd|25th/i).db_format 
	end 

	def frites_meats_north_south_street(data)
		data.scan(/pearl|6th|north end|hudson/i).db_format 
	end

	def frites_meats_east_west_street(data)
		data.scan(/hanover|50th|vesey|king/i).db_format 
	end

	def fun_buns_north_south_street(data)
		data.scan(/6th|madison|adams|6th/i).db_format 
	end

	def fun_buns_east_west_street(data)
		data.scan(/50th|47th|front|48th/i).db_format 
	end

	def hibachi_heaven_north_south_street(data)
		data.scan(/park|front|hudson|6th|broadway/i).db_format 
	end

	def hibachi_heaven_east_west_street(data)
		data.scan(/47th|wall|king|46th|55/i).db_format 
	end

	def korilla_bbq_north_south_street(data)
		data.scan(/broadway|varick|park/i).db_format 
	end

	def korilla_bbq_east_west_street(data)
		data.scan(/25th|vandam|47th/i).db_format 
	end

	def mexico_blvd_north_south_street(data)
		data.scan(/6th/i).db_format 
	end

	def mexico_blvd_east_west_street(data)
		data.scan(/46th/i).db_format 
	end

	def mexicue_north_south_street(data)
		data.scan(/6th|north end|5th|11th/i).db_format 
	end

	def mexicue_east_west_street(data)
		data.scan(/45th|vesey|18th|26th/i).db_format 
	end

	def mikenwillies_north_south_street(data)
		data.scan(/varick|bdwy|front|broadway/i).db_format 
	end

	def mikenwillies_east_west_street(data)
		data.scan(/grand|56th|old/i).db_format 
	end

	def milktrucknyc_north_south_street(data)
		data.scan(/north end|5th|william/i).db_format 
	end

	def milktrucknyc_east_west_street(data)
		data.scan(/vesey|20th|wall/i).db_format 
	end

	def morristruck_north_south_street(data)
		data.scan(/park|6th|north end|madison/i).db_format 
	end

	def morristruck_east_west_street(data)
		data.scan(/29th|29|52nd|vesey|51st/i).db_format 
	end

	def munchie_mobile_north_south_street(data)
		data.scan(/5th|north end|front|varick|broadway/i).db_format 
	end

	def munchie_mobile_east_west_street(data)
		data.scan(/17th|vesey|wall|grand|55th/i).db_format 
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
		test = data.scan(/tomorrow/i)
		if test == ['Tomorrow' || 'tomorrow']
			return ''
		end
	end
end
