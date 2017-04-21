require 'rspec'
require './lib/a_and_a.rb'

describe("#String#anagram") do
  it("returns true if a one word string entered is the anagram of another String") do
    expect(("eat").anagram?("tea")).to(eq(true))
  end

  it("returns false if a one word string entered is not the anagram of another String") do
    expect(("honey").anagram?("oats")).to(eq(false))
  end

  it("returns true for anagrams of different cases") do
    expect(("eAT").anagram?("Tea")).to(eq(true))
  end

  it("returns true for anagrams with different spacing") do
    expect(("e A T").anagram?("Te  a")).to(eq(true))
  end
end
