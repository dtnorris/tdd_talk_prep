require 'spec_helper'

describe TeamMember do
  describe "email_member?" do
    let(:team_member) { TeamMember.new(team) }
    let(:team) { double }
    let(:activity) { double }
    let(:payment) { double }

    before do
      allow(team).to receive(:active) { activity }
      allow(activity).to receive(:paid) { payment }
      allow(payment).to receive(:unscheduled) { true }
    end

    it "returns whether or not to email the team member" do
      expect(team_member.email_member?).to eq true
    end
  end
end


