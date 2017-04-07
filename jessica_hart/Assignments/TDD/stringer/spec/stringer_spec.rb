require "spec_helper"
RSpec.describe Stringer do
  context "method spacify" do
    it "concatenates undefined number of strings with a space" do
      expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
    end
  end
  context "method minify" do
    it "adds a '...' to the end of a string beyond a max length" do
      expect(Stringer.minify("This is a string", 9)).to eq("This is a...")
    end
    it "returns the string itself if shorter than max length" do
      expect(Stringer.minify("This is a string", 20)).to eq("This is a string")
    end
  end
  context "method replacify" do
    it "replaces each instance of a word in a string with the given new word" do
      expect(Stringer.replacify("This is a stringy string", "string", "sentence")).to eq("This is a sentencey sentence")
    end
  end
  context "method tokenize" do
    it "adds each word into an array and returns it" do
      expect(Stringer.tokenize "This is a string").to eq(["This", "is", "a", "string"])
    end
  end
  context "method removify" do
    it "removes each instance of a word specified" do
      expect(Stringer.removify("This string is a string", "string")).to eq("This is a")
    end
  end
end
