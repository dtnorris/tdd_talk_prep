class SurveysController < ApplicationController
  def index
  end

  def new
    @survey = Survey.new
  end
end
