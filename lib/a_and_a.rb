class String

  def is_a_word?(input)
    if input.length !=0 && input.match(/^[aeiou]*/i)
      true
    else
      false
    end
  end


  def anagram?(input2)
    input1 = self.downcase
    input2.downcase!
    both_words = (input1 + input2).split("") - [" "]
    both_words.uniq == (input1.split("") - [" "])
  end

end
