require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "tyler") }
  subject(:dessert) { Dessert.new('brownie', 10, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq('brownie')
    end

    it "sets a quantity" do
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do
      expect(dessert.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do
        bad_dessert = Dessert.new('cookie', '10', 'david')
      end.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(dessert.ingredients).to_not include('chocolate')
      dessert.add_ingredient('chocolate')
      expect(dessert.ingredients).to include('chocolate')
    end
  end

  describe "#mix!" do
    context 'when shuffling ingredients' do
      before(:each) do
        dessert.add_ingredient('chocolate')
        dessert.add_ingredient('vanilla')
        dessert.add_ingredient('baking soda')
      end
    it "shuffles the ingredient array" do
      ingredients = ['chocolate', 'vanilla', 'baking soda']
      dessert.mix!
      expect(dessert.ingredients).not_to eq(ingredients)
    end
  end
end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(5)
      expect(dessert.quantity).to eq(5)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(11) }.to raise_error(RuntimeError)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Tyler the Great Baker")
     expect(dessert.serve).to eq("Chef Tyler the Great Baker has made 10 brownies!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end
end
