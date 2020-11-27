class ChangeColumnNameTagtoSkilllocation < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :tag, :skill_location
  end
end
