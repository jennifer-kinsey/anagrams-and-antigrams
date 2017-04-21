class String

  def is_a_word?(input)
    if input.length !=0 && input.match((/[AEIOUY]+/i))
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

  def palindrome?(input2)
    input1 = self.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    input1.reverse == input2
  end

  def antigram?(input2)
    input1 = self.downcase.gsub(/\s+/, "")
    input2= input2.downcase.gsub(/\s+/, "")
    both_words = (input1 + input2).split("") - [" "]
    both_words.uniq.length == (input1 + input2).length
  end
end
