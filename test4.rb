def find_number_of_valid_phass_phrases
  $dictionary1 = []
  data = File.open("test4.txt")
  num_valid_wörter = 0
  data.each_line do |line|
    arr = line.split(" ")
    valid = false
    p arr
    arr.each do |potential_word|
      #p $dictionary1
      if dictionary1_includes_anagram_of_word(potential_word)
        valid = false
        break
      else
        valid = true
        $dictionary1.push(potential_word)
      end
    end
    if valid and arr.length > 0 
      num_valid_wörter += 1
    end
    $dictionary1 = []
  end
  puts num_valid_wörter
end
def dictionary1_includes_anagram_of_word(word_vieux)
  includes_ana = false
  $dictionary1.each do |wor|
    word = word_vieux
    if word == "oqqf"
      puts word
      puts wor
    end
    (0..(wor.length-1)).each do |n|
      if word == "oqqf"
        puts word
        puts wor
      end
      if word == nil
        word = word_vieux
        break
      end
      if word.include? wor[n]
        index = word.index(wor[n])
        if word.length >= 2
          if index != 0
            if index != (word.length - 1)
              word = word[0, index].concat(word[ index + 1, word.length - 1])
            else 
              word = word[0, word.length - 1]
            end
          else
            word = word[ 1, word.length - 1]
          end
        else
          word = nil 
        end
      else
        word = word_vieux
        break
      end
    end
    if  word.nil? 
      includes_ana = true
      break
    else
      # nothing
    end  
  end
  includes_ana
end
  
find_number_of_valid_phass_phrases
