def creatingVal(result, key, value)
    unless result[key].include?(value)
      result[key][value] = 0
    end
    result[key][value] += 1
  end 
  
  def my_data_process(input)
    result = {"Gender" => {}, "Email" => {}, "Age" => {}, "City" => {}, "Device" => {}, "Order At" => {}}
    input.drop(1).each do |line|
      finalArr = line.split(",")
      creatingVal(result, "Gender", finalArr[0])
      creatingVal(result, "Email", finalArr[4])
      creatingVal(result, "Age", finalArr[5])
      creatingVal(result, "City", finalArr[6])
      creatingVal(result, "Device", finalArr[7])
      creatingVal(result, "Order At", finalArr[9])
    end
   return result.to_json
  end
  
  #input = ["Gender,FirstName,LastName,UserName,Email,Age,City,Device,Coffee Quantity,Order At", "Male,Carl,Wilderman,carl,yahoo.com,21->40,Seattle,Safari iPhone,2,afternoon", "Male,Marvin,Lind,marvin,hotmail.com,66->99,Detroit,Chrome Android,2,afternoon", "Female,Shanelle,Marquardt,shanelle,hotmail.com,21->40,Las Vegas,Chrome,1,afternoon", "Female,Lavonne,Romaguera,lavonne,yahoo.com,66->99,Seattle,Chrome,2,morning", "Male,Derick,McLaughlin,derick,hotmail.com,41->65,Chicago,Chrome Android,1,afternoon"]
  #puts my_data_process(input)
  