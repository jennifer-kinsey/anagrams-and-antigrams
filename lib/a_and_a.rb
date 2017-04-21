class String

  def anagram? (input2)
    input1 = self.downcase
    input2.downcase!
    both_words = (input1 + input2).split("") - [" "]
    both_words.uniq == (input1.split("") - [" "])
  end
end
