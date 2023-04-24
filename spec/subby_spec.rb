require "./lib/subby.rb"

describe Subproj do
  let(:f) {Subproj.new}
  let(:d1) {%w(below down go going horn how howdy it i low own part partner sit)}
  describe "#substring" do
    it "returns a hash from cross-referencing a given dictionary and a given string" do
      expect(
        f.substring("Howdy partner, sit down! How's it going?", d1)).to eq(
        {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1})

      expect(f.substring("below", d1)).to eq({"below"=>1, "low"=>1})
    end
  end
end