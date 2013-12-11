class SurveysController < ApplicationController
  def index
  end

  def new
    @survey = Survey.new
  end

  def create
    Survey.create(survey_params)
    render :index
  end

  private

  def survey_params
    params.require(:survey).permit(:name, :age, :climbing_grade, :favorite_climber)
  end
end
