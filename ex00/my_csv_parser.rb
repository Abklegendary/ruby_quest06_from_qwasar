def my_csv_parser(param_1, param_2)
    result = []
    param_1.split("\n").each do |line|
      row = line.split(param_2)
      result.push(row)
    end
    result
  end
  
  #puts my_csv_parser("a,b,c,e\n1,2,3,4\n", ",")