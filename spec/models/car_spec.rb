require 'spec_helper'

describe Car do
  describe "#start" do
    let(:car) { Car.new("ford") }
    let(:engine) { double }

    before do
      allow(car).to receive(:engine) { engine }
      allow(engine).to receive(:start)
      allow(engine).to receive(:running) { true }
    end

    it "starts the engine" do
      expect(engine).to receive(:start)
      car.start
    end

    it "returns the engine running status" do
      car.start
      expect(car.running).to eq true
    end
  end
end


