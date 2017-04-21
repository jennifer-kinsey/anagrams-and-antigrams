class String

  def is_a_word?(input1, input2)
    if input1.length !=0 && input1.match((/[AEIOUY]+/i)) &&
      input2.length != 0 && input2.match((/[AEIOUY]+/i))
      true
    else
      false
    end
  end

  def anagram?(input1, input2)
    input1.downcase!
    input2.downcase!
    both_words = (input1 + input2).split("") - [" "]
    both_words.uniq == (input1.split("") - [" "])
  end

  def palindrome?(input1, input2)
    input1 = input1.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.reverse == input2
  end

  def antigram?(thing1, thing2)
    thing1 = thing1.downcase.gsub(/\s+/, "")
    thing2= thing2.downcase.gsub(/\s+/, "")
    both_words = (thing1 + thing2).split("") - [" "]
    both_words.uniq.length == (thing1 + thing2).length
  end
end
