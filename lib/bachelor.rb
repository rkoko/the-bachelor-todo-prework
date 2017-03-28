def get_first_name_of_season_winner(data, season)
winner = ""
data.each do |season_num, info|
        if season_num == season
            info.each_index do |i|
                if info[i]["status"] == "Winner"
                   winner =  info[i]["name"].split
                   winner = winner[0]
                    end
                end
            end
        end
 winner
end

def get_contestant_name(data, occupation)
  woman = ""
  data.each do |season_num, info|
      info.each_index do |i|
          if info[i]["occupation"]==occupation
              woman = info[i]["name"]
          end
          end
      end
  woman
end

def count_contestants_by_hometown(data, hometown)
    counter = 0
    data.each do |season, info|
        info.each_index do |i|
            if info[i]["hometown"] == hometown
                counter +=1
                end
            end
        end
    counter
end

def get_occupation(data, hometown)
    array=[]
  data.each do |season, info|
      info.each_index do |i|
          if info[i]["hometown"] == hometown
             array<< info[i]["occupation"]
              end
          end
      end
   array[0]
end

def get_average_age_for_season(data, season)
  array=[]
  data.each do |season_num, info|
      if season_num == season
      info.each_index do |i|
         array<< info[i]["age"].to_f
         end
      end
      end
  
  sum = array.inject(0) {|result, number| result+number}
  avg = sum/array.length
  avg.round
end


