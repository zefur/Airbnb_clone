class ChangeColumnNameSkillTypeToTag < ActiveRecord::Migration[6.0]
  def change
    rename_column :skills, :skill_type, :tag
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
