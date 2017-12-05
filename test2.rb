
def calculate_check_sum
  sum = 0 
  data = File.read("input2.txt")
  data.each_line do |line|
    arr = line.gsub(/\s+/m, ' ').strip.split(" ")
    result = 0
    arr.each_with_index do |i, elem|
      if result != 0
        break
      end
      arr.each_with_index do |j, elem2|
        if result != 0
          break
        end
        if i.to_i > j.to_i
          if elem != elem2 and i.to_i != 0 and j.to_i != 0 and i.to_i % j.to_i == 0 
            result = i.to_i / j.to_i
          end
        else 
          if elem != elem2 and i.to_i != 0 and j.to_i != 0 and j.to_i % i.to_i == 0 
            result = j.to_i / i.to_i
          end
        end
      end
    end
    sum += result
  end
  puts sum
end
calculate_check_sum
