def calc_num_infected_nodes
  x = 0
  hard_drive = Hash.new
  data = File.each_line do |line|
    arr = line.split("")
    arr.each_with_index do |index, value|
      hard_drive[x][index] = value
    end
    y -= 1
  end
  curr_pos = [0, 0]
  number_of_infected_nodes = 0
  (1..10000).each do |n|
    #see if the node is infected, if it is clean
    # if the node is not infected then infect and increase count
    # if curr_pos[0] is nil then append [] to matrix
  end

end


calc_num_infected_nodes n
