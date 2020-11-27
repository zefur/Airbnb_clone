class ChangeColumnNameSkilltypeToTag < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :skill_type, :tag
  end
end
