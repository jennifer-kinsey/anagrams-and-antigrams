require 'rspec'
require './lib/a_and_a.rb'

describe("#String#anagram") do
  it("returns true if a one word string entered is the anagram of another String") do
    expect(("eat").anagram?("tea")).to(eq(true))
  end
end
