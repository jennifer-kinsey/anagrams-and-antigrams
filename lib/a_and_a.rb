class String

# has length and contains a vowel
  def is_a_word?(input1, input2)
    if input1.length !=0 && input1.match((/[AEIOUY]+/i)) &&
      input2.length != 0 && input2.match((/[AEIOUY]+/i))
      true
    else
      false
    end
  end

# anagram - input1 is equal to input2 rearranged - eg iceman, cinema
  def anagram?(input1, input2)
    input1= input1.downcase.gsub(/\s+/, "").split("").sort!
    input2 = input2.downcase.gsub(/\s+/, "").split("").sort!
    input1==input2
  end

# palindrome - if input1 backwards is the same as input2 forwards
  def palindrome?(input1, input2)
    input1 = input1.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.reverse == input2
  end

# antigram - input1 and input2 have no chars in common
  def antigram?(input1, input2) #biiiiike, catttt
    antigram_array = []
    input1 = input1.downcase.gsub(/\s+/, "").split("")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.each do |char| #b, i, i , i , i, k, e
      #check to see one individual chars in input1 aren't in input2
      antigram_array.push(input2.index(char) == nil) #true, true
    end
    !antigram_array.include?(false) #if any are false (that is are included) return false
  end
end
