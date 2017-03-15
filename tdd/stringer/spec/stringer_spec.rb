require "spec_helper"

RSpec.describe Stringer do
  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end
  it "shortens a string to a specified length" do
    expect(Stringer.minify "Hello, I'm learning how to create a gem", 10).to eq("Hello, I'm...")
  end
  it "returns original string if specified length is longer than string length" do
    expect(Stringer.minify "Hello", 10).to eq("Hello")
  end
  it "replaces a given word with a specified money" do
    expect(Stringer.replacify "I can't do this", "can't", "can").to eq("I can do this")
  end
  it "returns an array of an undefined number of strings " do
    expect(Stringer.tokenize("I'll love to code")).to eq(["I'll", "love", "to", "code"])
  end
  it "removes all instances of a given string from an original string" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end
