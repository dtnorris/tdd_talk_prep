require 'spec_helper'

describe Engine do
  describe "#start" do
    let(:engine) { Engine.new }

    it "sets running to true" do
      engine.start
      expect(engine.running).to eq true
    end
  end
end
