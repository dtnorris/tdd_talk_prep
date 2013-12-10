class CreateSurvey < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :name
      t.string :age
      t.string :climbing_grade
      t.string :favorite_climber
    end
  end
end
