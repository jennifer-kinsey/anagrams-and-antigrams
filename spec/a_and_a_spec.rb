require 'rspec'
require './lib/a_and_a.rb'

describe("String#is_a_word?") do
  let(:word) { String.new }
  it("returns false if word has no length") do
    expect(word.is_a_word?("", "")).to(eq(false))
  end
  it("returns true if has length") do
    expect(word.is_a_word?("EAT", "CARROTS")).to(eq(true))
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
    expect(word.anagram?("oats", "honey")).to(eq(false))
  end

  it("returns true for anagrams of different cases") do
    expect(word.anagram?("Tea", "atE")).to(eq(true))
  end

  it("returns true for anagrams with different spacing") do
    expect(word.anagram?("snope", "snop   e")).to(eq(true))
  end

end

describe("String#palindrome?") do
  let(:word) { String.new }
  it("returns true if one word backwards is the other word") do
    expect(word.palindrome?("eat", "tae")).to(eq(true))
  end

  it("returns false if one word backwards is not the other word") do
    expect(word.palindrome?("tea", "ofoiejoijeat")).to(eq(false))
  end
end

describe("String#antigram") do
  let(:word) { String.new }
  it("returns true if one word is the antigram of the other - that is, has all unique characters") do
    expect(word.antigram?("bike", "cat")).to(eq(true))
  end

  it("returns false if one word backwards is not the other word") do
    expect(word.antigram?("tea", "cake")).to(eq(false))
  end
end
