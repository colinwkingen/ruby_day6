require("rspec")
require("new_hash")

describe(NewHash) do
  describe('#addHash') do
    # it("creates key value pairs") do
    #   new_hash = NewHash.new(key, value)
    #   arr = ["potato", "vegetable"]
    #   expect(new_hash.addHash("potato", "vegetable")).to(eq(Hash[*arr]))
    # end
    it("returns the value of a key when called") do
      new_hash = NewHash.new()
      new_hash.newStore("potato", "vegetable")
      expect(new_hash.newFetch("potato")).to(eq("vegetable"))
    end
    it("returns true if a requested key exists") do
      new_hash = NewHash.new()
      new_hash.newStore("potato", "vegetable")
      expect(new_hash.has_key?("potato")).to(eq(true))
    end
    it("returns true if a requested value exists") do
      new_hash = NewHash.new()
      new_hash.newStore("potato", "vegetable")
      expect(new_hash.has_value?("vegetable")).to(eq(true))
    end
    it("returns length of a hash") do
      new_hash = NewHash.new()
      new_hash.newStore("potato", "vegetable")
      new_hash.newStore("potatoe", "vegetable")
      new_hash.newStore("tomato", "vegetable")
      new_hash.newStore("totatoe", "vegetable")
      expect(new_hash.length()).to(eq(4))
    end
    it("returns length of a hash") do
      new_hash = NewHash.new()
      new_hash.newStore("potato", "vegetable")
      new_hash.newStore("potatoe", "vegetable")
      new_hash.newStore("tomato", "vegetable")
      new_hash.newStore("totatoe", "vegetable")
      other_new_hash = NewHash.new()
      other_new_hash.newStore("banana", "fruit")
      other_new_hash.newStore("apple", "fruit")
      other_new_hash.newStore("orange", "fruit")
      other_new_hash.newStore("grape", "fruit")
      expect(new_hash.newMerge(other_new_hash)).to(eq(
      [
        ["potato", "vegetable"],
        ["potatoe", "vegetable"],
        ["tomato", "vegetable"],
        ["totatoe", "vegetable"],
        ["banana", "fruit"],
        ["apple", "fruit"],
        ["orange", "fruit"],
        ["grape", "fruit"]
      ].sort))
    end


    # it("creates a new hash instance") do
    #   new_hash = NewHash.new(key, value)
    #   expect(new_hash.myNew()).to(eq([]))
    # end
  end
end
