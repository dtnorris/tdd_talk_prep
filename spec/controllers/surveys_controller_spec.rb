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

    it "exposes a new survey object" do
      get :new
      expect(assigns(:survey)).to be_a_new Survey
    end
  end

  describe "#create" do
    let(:survey_params) do
      {survey: {
        name: "David",
        age: "25",
        climbing_grade: "5.12",
        favorite_climber: "Chris Sharma"
        }
      }
    end
    let(:initial) { 0 }

    it "creates a new survey" do
      expect(Survey.all.count).to eq initial
      post :create, survey_params
      expect(Survey.all.count).to eq initial + 1
    end

    it "renders the index" do
      post :create, survey_params
      expect(response).to render_template :index
    end
  end
end
