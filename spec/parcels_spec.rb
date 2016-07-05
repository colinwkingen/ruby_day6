require('rspec')
require('parcels')

describe(Parcels) do
  describe('#volume') do
    it("takes 3 paramters and calculates the volume of a package") do
      new_parcel = Parcels.new([2, 2, 2, 6])
      expect(new_parcel.volume()).to(eq(8))
    end
  end
  describe('#cost_to_ship') do
    it("calculates shipping cost based on volume and weight") do
      new_parcel = Parcels.new([2, 2, 2, 6])
      expect(new_parcel.cost_to_ship()).to(eq(12))
    end
  end
end
