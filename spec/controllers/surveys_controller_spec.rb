require 'spec_helper'

describe SurveysController do
  describe "#index" do
    it "renders the homepage" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe "#new" do
    it "renders the new survey page" do
      get :new
      expect(response).to render_template :new
    end
  end
end
