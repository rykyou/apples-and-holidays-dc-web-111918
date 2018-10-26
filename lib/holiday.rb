require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holidays|
    if season == :winter 
      holidays.each do |holiday, supplies|
        supplies << supply 
      end 
    end 
  end 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    season = season.to_s.capitalize!
    puts "#{season}:"
    holidays.each do |holiday, supplies|
      holiday_string = holiday.to_s
      if holiday_string.include? "_" 
        holiday_array = holiday_string.split("_")
        holiday_array.each { |x| x.capitalize!}
        holiday = holiday_array.join(" ")
      else 
        holiday = holiday_string.capitalize!
      end 
      supplies = supplies.join(", ")
      puts "  #{holiday}: #{supplies}"
    end 
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_with_BBQ = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_with_BBQ << holiday
      end 
    end 
  end
  holiday_with_BBQ
end







