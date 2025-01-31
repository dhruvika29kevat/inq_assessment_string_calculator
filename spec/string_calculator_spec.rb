require_relative '../string_calculator'

RSpec.describe StringCalculator do
  describe "#add" do
    it "returns 0 for an empty string" do
      calculator = StringCalculator.new
      expect(calculator.add("")).to eq(0)
    end

    it "returns the number itself if one number is provided" do
      calculator = StringCalculator.new
      expect(calculator.add("1")).to eq(1)
    end

    it "returns the sum of the numbers seperated by a comma" do
      calculator = StringCalculator.new
      expect(calculator.add("1,2")).to eq(3)
      expect(calculator.add("10,20,30")).to eq(60)
    end

    it "handles the delimiters" do
      calculator = StringCalculator.new
      expect(calculator.add("1\n2,3")).to eq(6)
    end
  end
end
