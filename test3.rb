def find_manhattan_distance_of_spiral_memory_system_register(input)
  x_r_last = 0
  x_l_last = 0
  y_u_last = 0
  y_d_last = 0
  locus = [0, 0]
  count = 1
  $matrix_x_y = [[1]]
  $matrix_x_neg_y = [[0], [0]]
  $matrix_neg_x_neg_y = [[0], [0]]
  $matrix_neg_x_y = [[0], [0]]
  while count <= input
    # go right for a while
    while locus[0] <= x_r_last
      if count > input
        break
      end
      locus[0]+= 1
      count = set_array_to_be_sum_of_its_neighbors(locus)
    end
    x_r_last = locus[0]

    if count > input
      break
    end

    # go up for a while
    while locus[1] <= y_u_last
      if count > input
        break
      end
      locus[1] += 1
      count = set_array_to_be_sum_of_its_neighbors(locus)
    end
    y_u_last = locus[1]
    if count > input
      break
    end

    
    # go left for a while
    while locus[0] >= x_l_last
      if count > input
        break
      end
      locus[0] -= 1
      count = set_array_to_be_sum_of_its_neighbors(locus)
    end
    x_l_last = locus[0]
    if count > input
      break
    end
    # go down for a while
    while locus[1] >= y_d_last
      if count > input
        break
      end
      locus[1] -= 1
      count = set_array_to_be_sum_of_its_neighbors(locus)
    end
    y_d_last = locus[1]

  end
  puts count
end

  
def set_array_to_be_sum_of_its_neighbors(locus)
  # left
  # locus[0] - 1
  left = find_the_value_in_the_right_array([locus[0] - 1, locus[1]])
  puts "#{left} left "

  # above
  above = find_the_value_in_the_right_array([locus[0], locus[1] + 1])
  puts "#{above} above "

  # below
  below = find_the_value_in_the_right_array([locus[0], locus[1] - 1])
  puts "#{below} below "

  # below to left
  belowtl = find_the_value_in_the_right_array([locus[0] - 1, locus[1] - 1])
  puts "#{belowtl} belowtl "

  # below to right
  belowtr = find_the_value_in_the_right_array([locus[0] + 1, locus[1] - 1])
  puts "#{belowtr} belowtr "

  # above  to right
  abovetr = find_the_value_in_the_right_array([locus[0] + 1, locus[1] + 1])
  puts "#{abovetr} abovetr "

  # above to right
  abovetl = find_the_value_in_the_right_array([locus[0] - 1, locus[1] + 1])
  puts "#{abovetl} abovetl "

  # right
  right = find_the_value_in_the_right_array([locus[0] + 1, locus[1] ])
  puts "#{right} right "


  value = left + above + below + belowtl + belowtr + abovetr + abovetl + right
  puts value
  write_the_value_in_the_right_array(locus, value)
  value
end

def write_the_value_in_the_right_array(locus, value)
  if locus[1] >= 0 and locus[0] >= 0
   if $matrix_x_y[locus[0]] == nil
     $matrix_x_y[locus[0]] = []
   end
    $matrix_x_y[locus[0]][locus[1]] = value
  elsif locus[1] >= 0 and locus[0] < 0
   if $matrix_neg_x_y[( locus[0]).abs ] == nil 
     $matrix_neg_x_y[ (locus[0]).abs ] = []
   end
    $matrix_neg_x_y[ (locus[0]).abs ][locus[1]] = value
  elsif locus[1] < 0 and locus[0] >= 0
   if $matrix_x_neg_y[locus[0]] == nil
     $matrix_x_neg_y[locus[0]] = []
   end
    $matrix_x_neg_y[locus[0]][( locus[1]).abs ] = value
  elsif locus[1] < 0 and locus [0] < 0
   if $matrix_neg_x_neg_y[ (locus[0]).abs ] == nil 
      $matrix_neg_x_neg_y[ (locus[0]).abs ] = [] 
   end
    $matrix_neg_x_neg_y[(locus[0]).abs][(locus[1]).abs] = value
  else
   # whatev
  end
  value
end

def find_the_value_in_the_right_array(locus)
  value = 0
  if locus[1] >= 0 and locus[0] >= 0
   if $matrix_x_y[locus[0]] == nil or $matrix_x_y[locus[0]][locus[1]] == nil
     return value
   end
   value = $matrix_x_y[locus[0]][locus[1]]
  elsif locus[1] >= 0 and locus[0] < 0
   if $matrix_neg_x_y[ (locus[0]).abs ] == nil or $matrix_neg_x_y[ (locus[0]).abs][locus[1]] == nil
     return value
   end
   value = $matrix_neg_x_y[ (locus[0]).abs ][locus[1]]
  elsif locus[1] < 0 and locus[0] >= 0
   if $matrix_x_neg_y[locus[0]] == nil or $matrix_x_neg_y[locus[0]][( locus[1]).abs ] == nil
     return value
   end
   value = $matrix_x_neg_y[locus[0]][ (locus[1]).abs ]

  elsif locus[1] < 0 and locus [0] < 0
   if $matrix_neg_x_neg_y[ (locus[0]).abs ] == nil or $matrix_neg_x_neg_y[ (locus[0]).abs ][(locus[1]).abs ] == nil
     return value
   end
   value = $matrix_neg_x_neg_y[ (locus[0]).abs ][(locus[1]).abs ]
  else 
  end
  
  return value
end

find_manhattan_distance_of_spiral_memory_system_register(289326)
