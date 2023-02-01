require 'date'
def my_data_transform(param)
    if param.nil?
    return nil
    end
    
    myArr = param.split("\n")
    result = []
    
    result.append(myArr[0])
    
    for i in 1..(myArr.length-1)
     values = myArr[i].split(",")
     values[4] = transform_email(values[4])
     values[5] = transform_age(values[5])
     values[9] = transform_time_range(values[9])
    result.append(seperator(values))
    end
    return result
    end

def transform_age(age)
newage= age.to_i
    if newage >= 1 && newage <= 20
    "1->20"
    elsif newage >= 21 && newage <= 40
    "21->40"
    elsif newage >= 41 && newage <= 65
    "41->65"
    else
    "66->99"
    end
    end

    def transform_time_range(time)
        datetime_object = DateTime.parse(time)
      hour = datetime_object.hour
      
      if hour >= 6 && hour < 12
        return "morning"
      elsif hour >= 12 && hour < 18
        return "afternoon"
      else
        return "evening"
      end
    end
    
    def seperator(arr)
     return arr.join(",")
    end
    
    def transform_email(email)
        email.split("@").last
    end
    
    #input = "Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At\nMale,Carl,Wilderman,carl,wilderman_carl@yahoo.com,29,Seattle,Safari iPhone,2,2020-03-06 16:37:56\nMale,Marvin,Lind,marvin,marvin_lind@hotmail.com,77,Detroit,Chrome Android,2,2020-03-02 13:55:51\nFemale,Shanelle,Marquardt,shanelle,marquardt.shanelle@hotmail.com,21,Las Vegas,Chrome,1,2020-03-05 17:53:05\nFemale,Lavonne,Romaguera,lavonne,romaguera.lavonne@yahoo.com,81,Seattle,Chrome,2,2020-03-04 10:33:53\nMale,Derick,McLaughlin,derick,mclaughlin.derick@hotmail.com,47,Chicago,Chrome Android,1,2020-03-05 15:19:48\n"
    #puts my_data_transform(input) 



 