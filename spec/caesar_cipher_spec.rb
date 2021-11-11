require_relative "../lib/cipher.rb"

describe "#char_array" do
  it "returns characters of given string as an array" do
    expect(char_array("five")).to eql(["f","i","v","e"])
  end
end

describe "#char_to_ord" do
  it "returns an array of ordinal values given an array of strings" do
    expect(char_to_ord(["f","d"])).to eql([102,100])
  end
end

describe "#ord_to_char" do
  it "returns an array of characters given an array of ordinal values" do
    expect(ord_to_char([102,100])).to eql(["f","d"])
  end
end

describe "#caesar_cipher" do
  it "shifts a string by an index of 1" do
    expect(caesar_cipher("abcd",1)).to eql("bcde")
  end
  it "shifts a string by an index of 0" do
    expect(caesar_cipher("abcd",0)).to eql("abcd")
  end
end

