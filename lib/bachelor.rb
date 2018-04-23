require "pry"
def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data.each do |season1, season_data|
    if season1 == season
      season_data.each do |keys, values|
        if keys["status"] == "Winner"
          winner_name = keys["name"]
      end
    end
    end
  end
  arr = winner_name.split
  arr[0]
end

def get_contestant_name(data, occupation)
  winner_name =""
  data.each do |season1, season_data|
      season_data.each do |keys, values|
        if keys["occupation"] == occupation
          winner_name = keys["name"]
      end
    end
  end
  winner_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season1, season_data|
      season_data.each do |keys, values|
        if keys["hometown"] == hometown
          counter +=1
      end
    end
  end
counter
end

def get_occupation(data, hometown)
  arr = []
  data.each do |season1, season_data|
      season_data.each do |keys, values|
        if keys["hometown"] == hometown
          arr << keys["occupation"]
      end
    end
  end
 arr[0]
end

def get_average_age_for_season(data, season)
  # code here
  arr =[]
  data.each do |season1, season_data|
    if season1 == season
      season_data.each do |keys, values|
        arr << keys["age"].to_f
    end
    end
  end
  average_arr = arr.inject{ |sum, el| sum + el }.to_f / arr.size
  average_arr.round
end
