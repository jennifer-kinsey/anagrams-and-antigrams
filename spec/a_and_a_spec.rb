require 'rspec'
require './lib/a_and_a.rb'

describe("String#is_a_word?") do
  let(:word) { String.new }
  it("returns false if word has no length") do
    expect(word.is_a_word?("", "a")).to(eq(false))
  end
  it("returns true if has length") do
    expect(word.is_a_word?("DRINK", "WINE")).to(eq(true))
  end
  it("returns true if has a vowel") do
    expect(word.is_a_word?("EAT", "GLUE")).to(eq(true))
  end
  it("returns false if has no vowel") do
    expect(word.is_a_word?("zzz", "zqj")).to(eq(false))
  end

end

describe("String#anagram?") do
  let(:word) { String.new }
  it("returns true if a one word string entered is the anagram of another String") do
    expect(word.anagram?("tea", "tae")).to(eq(true))
  end

  it("returns false if a one word string entered is not the anagram of another String") do
    expect(word.anagram?("tao", "tea")).to(eq(false))
  end

  it("returns true for anagrams of different cases") do
    expect(word.anagram?("Tea", "EAt")).to(eq(true))
  end

  it("returns true for anagrams with different spacing") do
    expect(word.anagram?("ci ne ma", "ice man")).to(eq(true))
  end

  it("returns true for anagrams with repeated characters that are anagrams") do
    expect(word.anagram?("madam im adam", "im adam madam")).to(eq(true))
  end
end

describe("String#palindrome?") do
  let(:word) { String.new }
  it("returns true if one word backwards is the other word") do
    expect(word.palindrome?("madam Im Adam", "madamimadam")).to(eq(true))
  end

  it("returns false if one word backwards is not the other word") do
    expect(word.palindrome?("tea", "pot")).to(eq(false))
  end
end

describe("String#antigram") do
  let(:word) { String.new }
  it("returns true if one word is the antigram of the other - that is, has all unique characters") do
    expect(word.antigram?("bike", "cat")).to(eq(true))
  end

  it("returns false if one word is the antigram of the other - that is, has all unique characters") do
    expect(word.antigram?("tea", "cake")).to(eq(false))
  end

  it("returns true if one word is the antigram of the other - that is, has all unique characters - regardless of repeats!") do
    expect(word.antigram?("biiiikeeee", "caaaaaat")).to(eq(true))
  end

  it("checks to make sure it's cool with short input1s") do
    expect(word.antigram?("a", "coiudaoiudoua")).to(eq(false))
  end

  it("checks to make sure it's cool with short input2s") do
    expect(word.antigram?("coiudaoiudoua", "a")).to(eq(false))
  end
end

describe("String#master_word_function") do
  let(:word) { String.new }
  it("returns") do
    expect(word.antigram?("bike", "cat")).to(eq(true))
  end
end
