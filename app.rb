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
  let(:word) { String.new }

  if(word.is_a_word?(input1) && word.is_a_word?(input2))
    @passed = "Good job on putting in two good words"
  else
    @passed = "no good, try again"
  end
  erb(:result)
end#ends result do


    # if anagram?
    #   @anagram = "#{input1} and #{input2} are anagrams"
    #   if palindrome?
    #     @palindrome = "and these are palindromes too"
    #   else
    #     @palindrome = "however, they are NOT palindromes"
    #   end#ends palindrome
    #
    # else
    #   @anagram = "#{input1} and #{input2} are NOT anagrams"
    #   if antigram?
    #     @antigram = "but these are antigrams"
    #   else
    #     @antigram = "and they are NOT antigrams"
    #   end
    # end
#   erb(:result)
# end#ends result do
