require 'spec_helper'

describe Survey do
  it "can initialize" do
    expect(Survey.new).to_not be_nil
  end

  it "can be saved" do
    expect(Survey.new.save).to_not be_nil
  end
end
