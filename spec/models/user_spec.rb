require 'spec_helper'

describe User do
  describe "ready_for_launch?" do
    let(:user) { User.new }

    before do
      allow(user).to receive(:activated?) { true }
    end

    it "returns true when activated" do
      expect(user.ready_for_launch?).to eq true
    end
  end
end
