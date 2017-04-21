require "sinatra"
require "sinatra/reloader"
require "./lib/a_and_a"
also_reload "lib/**/*.rb"
require "pry"

get "/" do
  erb(:index)
end

get "/result" do

  input1 = params.fetch("input_1")
  input2 = params.fetch("input_2")

  if(word.is_a_word?(input1) && word.input2.is_a_word?(input2))
    @passed = "Good job on putting in two good words"
    if anagram?
      @anagram = "#{input1} and #{input2} are anagrams"
      if palindrome?
        @palindrome = "and these are palindromes too"
      else
         @palindrome = "however, they aren't palindromes"
    else
      @anagram = "#{input1} and #{input2} are NOT anagrams"
  else
    @passed = "Try putting in real words"
    if antigram?
      @antigram = "#{input1} and #{input2} are antigrams"
    else
      @antigram = "#{input1} and #{input2} are NOT antigrams"
  end

  erb(:result)
end
