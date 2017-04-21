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
  def anagram?(input1, input2) #cinema   and  iceman
    input1= input1.downcase.gsub(/\s+/, "") #cinema
    input2 = input2.downcase.gsub(/\s+/, "") #iceman
    both_words = (input1 + input2).split("") #[c i n e m a i c e m a n]
    both_words.uniq == input1.split("") #[c i n e m a] == [c i n e m a]
  end

# palindrome - if input1 backwards is the same as input2 forwards
  def palindrome?(input1, input2)
    input1 = input1.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.reverse == input2
  end

# antigram - input1 and input2 have no chars in common
  def antigram?(input1, input2)
    input1 = input1.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    both_words = (input1 + input2).split("") - [" "]
    both_words.uniq.length == (input1 + input2).length
  end
end
