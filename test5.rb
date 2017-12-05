def count_how_many_steps_to_exit
  number_of_steps = 0
  input = File.open("input5.txt")
  $entire_arr = []
  index = 0
  
  input.each_line do |line|
    $entire_arr.push(line.to_i)
  end

  puts $entire_arr.length 
  while index != $entire_arr.length
   newIndex = $entire_arr[index] + index  
   if $entire_arr[index] >= 3
     newVal = $entire_arr[index] - 1
   else

     newVal = $entire_arr[index] + 1 
   end  


   $entire_arr[index] = newVal
   index = newIndex
   number_of_steps += 1
  end 

  puts number_of_steps


end


count_how_many_steps_to_exit

