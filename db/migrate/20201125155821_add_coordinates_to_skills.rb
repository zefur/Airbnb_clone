class AddCoordinatesToSkills < ActiveRecord::Migration[6.0]
  def change
    add_column :skills, :latitude, :float
    add_column :skills, :longitude, :float
  end
end
